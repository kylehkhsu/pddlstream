from pddlstream.algorithms.search import solve_from_pddl
import os
from pddlstream.utils import read
from pddlstream.language.constants import print_pddl_solution


def read_pddl(filename):
    directory = os.path.dirname(os.path.abspath(__file__))
    return read(os.path.join(directory, filename))


def solve_pddl():
    domain_pddl = read_pddl('domain.pddl')
    problem_pddl = read_pddl('problem.pddl')

    solution = solve_from_pddl(domain_pddl, problem_pddl, debug=True)
    print_pddl_solution(solution)



def main():
    solve_pddl()


if __name__ == '__main__':
    main()
