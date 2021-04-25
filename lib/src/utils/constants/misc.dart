class Constants {
  static const appName = 'Gestión UH';
  static const testMode = false;
  static const authUrl = '/auth/login';
  static const quotaUrl = '/proxy/quota';
  static const mailQuotaUrl = '/email/quota';
  static const resetPasswordUrld = '/user/changepassword';
  static const userDataUrl = '/user/me';
  static const allSecurityQuestionsUrl = '/securityquestions';
  static const signUpUrl = '/auth/signup';
  static const passwordRecoveryUrl = '/auth/resetpassword';
  static const userSecurityQuestionsUrl = '/user/securityquestions';
  static const baseUrl = 'https://identity.sic.uh.cu';
  static const objectClassTranslations = {
    'student': 'Estudiante',
    'worker': 'Trabajador'
  };
}
