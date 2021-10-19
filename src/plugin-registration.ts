import { registerPlugin } from '@capacitor/core'

import type { StripeTerminalInterface } from './definitions'

export const StripeTerminal = registerPlugin<StripeTerminalInterface>('StripeTerminal')
