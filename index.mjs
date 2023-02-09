import fs   from 'fs' ;
import path from 'path' ;
{
  const dotenv_file = path.resolve(process.cwd(), '.env');
  if ( ! fs.existsSync( dotenv_file ) ) {
    throw new Error( `.env file (${ dotenv_file }) is missing` );
  }
}

