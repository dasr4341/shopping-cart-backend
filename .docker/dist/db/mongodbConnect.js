import mongoose from 'mongoose';
import { config } from '../config/config.js';
export async function mongodb() {
    try {
        const uri = config.db.uri;
        await mongoose.connect(uri);
        console.log('mongodb ', `database connection established: ${uri}`);
    }
    catch (error) {
        throw new Error('database connection error');
    }
}
//# sourceMappingURL=mongodbConnect.js.map