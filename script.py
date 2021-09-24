import re
import os


class Lab:
    def __init__(self, date, description) -> None:
        self.date = date
        self.description = description

    def __str__(self) -> str:
        return self.description[7:]


ALL_LABS = {}


def lex_content(lab: Lab):
    return f"""\
%{{
// {lab.description}
%}}

//DECLARATION

%%
//RULES
%%

int main() {{
    yylex();
}}

int yywrap(void) {{
    return 0;
}}   
"""


def about_content(lab: Lab):
    return f"""\
{lab.description}
The lexfile.l contains the lex code for this program
The lex.yy.c file contains the c code for this program
The lex.yy is the C executable for this program
The output.png is the output for this program
"""


def add_lab_to_all_labs(lab: Lab):
    ALL_LABS.append(lab)


DIR = os.getcwd()
with open("trial.txt", "r") as file:
    for line in file:
        line_content = line.strip('|').split('|')
        # print("".join(line_content))
        if len(line_content) > 3 and "-" not in line_content[0]:
            lab_date = line_content[2].strip()
            program_description = line_content[1].strip()
            if lab_date.lower() != "date":
                ALL_LABS[lab_date] = ALL_LABS.get(lab_date, [])
                ALL_LABS[lab_date].append(Lab(lab_date, program_description))


def create_directories():
    for i, (date, labs) in enumerate(ALL_LABS.items()):
        lab_dir = f"labs/lab_{i+1}_{date.replace('/', '_')}"

        if not os.path.isdir(lab_dir):
            os.system(f"mkdir {lab_dir}")

        for idx, lab in enumerate(labs):
            program_path = f"{lab_dir}/program_{idx+1}"

            # print(lab_dir, program_path)
            if not os.path.isdir(program_path):
                os.system(f"mkdir {program_path}")
            os.system(
                f"echo '{about_content(lab)}' > {program_path}/about.txt"
            )
            os.system(
                f"echo '{lex_content(lab)}' > {program_path}/lexfile.l"
            )


create_directories()
