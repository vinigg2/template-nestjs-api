import { CreateUserDTO } from '@modules/users/dtos/create-user.dto';
import { IUserRepository } from '@modules/users/repositories/IUserRepository';
import { EntityManager, EntityRepository, Repository } from 'typeorm';
import { v4 as uuid } from 'uuid';
import { User } from '@modules/users/infra/typeorm/entities/user.entity';

@EntityRepository(User)
export class UsersRepository implements IUserRepository {
  private ormRepository: Repository<User>;

  constructor(manager: EntityManager) {
    this.ormRepository = manager.getRepository(User);
  }

  async create({ email, name }: CreateUserDTO): Promise<User> {
    const newUser = this.ormRepository.create({
      id: uuid(),
      name,
      email,
    });

    this.ormRepository.save(newUser);

    console.log('funfa', newUser);

    return newUser;
  }
  show(id: string): Promise<User> {
    throw new Error('Method not implemented.');
  }
  list(): Promise<User[]> {
    throw new Error('Method not implemented.');
  }
}
