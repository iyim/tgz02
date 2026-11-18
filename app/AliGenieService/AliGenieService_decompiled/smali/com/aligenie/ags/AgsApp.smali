.class public Lcom/aligenie/ags/AgsApp;
.super Landroid/app/Application;
.source ""


# static fields
.field public static b:Landroid/content/Context;

.field public static c:Lc/e/a/g/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 11

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    sget-boolean v0, Lc/b/a/b/o/d;->e:Z

    if-eqz v0, :cond_0

    const-string v0, "Don\'t do IC application onCreate again"

    invoke-static {v0}, Lc/b/a/b/o/i;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "get log.tag:"

    invoke-static {v0}, Lc/c/a/a/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    const-string v2, "log.tag"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "IC"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "W"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "I"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "after set log.tag:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lc/b/a/b/o/d;->e:Z

    invoke-virtual {p0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/aligenie/ags/AgsApp;->b:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aligenie/ags/analytics/service/ICService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Landroid/provider/SettingsStringUtil$SettingStringHelper;

    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "enabled_accessibility_services"

    invoke-direct {v1, v2, v4, v3}, Landroid/provider/SettingsStringUtil$SettingStringHelper;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/aligenie/ags/analytics/service/AccService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    invoke-virtual {v1}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->read()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/aligenie/ags/access/AccessService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v4}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->add(Ljava/lang/String;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/provider/SettingsStringUtil$SettingStringHelper;->write(Ljava/lang/String;)Z

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aligenie/ags/analytics/service/AccService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/aligenie/ags/access/AccessService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/app/Application;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const-string v1, "ags"

    const-string v2, "AGS App create"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/aligenie/ags/AgsApp;->b:Landroid/content/Context;

    .line 1
    sget-object v2, Lc/e/a/g/a;->b:Lc/e/a/g/a;

    if-eqz v2, :cond_2

    goto/16 :goto_2

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "useApplicationContext"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lc/e/a/g/a;->c:Z

    invoke-static {v1}, Lc/e/a/g/a;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lc/e/a/g/a;->b(Landroid/content/Context;)V

    new-instance v1, Lc/e/a/g/b;

    const-string v4, "genieic"

    invoke-direct {v1, v4}, Lc/e/a/g/b;-><init>(Ljava/lang/String;)V

    iput-boolean v0, v1, Lc/e/a/g/b;->T:Z

    iput-boolean v0, v1, Lc/e/a/g/b;->w:Z

    iput-boolean v3, v1, Lc/e/a/g/b;->Y:Z

    invoke-static {v1, v2}, Lc/e/a/i;->a(Lc/e/a/g/b;Landroid/os/Bundle;)Lc/e/a/g/b;

    move-result-object v6

    .line 2
    sget-object v1, Lc/e/a/i;->b:Lc/e/a/g/c;

    if-nez v1, :cond_3

    new-instance v1, Lc/e/a/g/c;

    invoke-direct {v1}, Lc/e/a/g/c;-><init>()V

    move-object v7, v1

    goto :goto_0

    :cond_3
    new-instance v3, Lc/e/a/g/c;

    invoke-direct {v3, v1}, Lc/e/a/g/c;-><init>(Lc/e/a/g/c;)V

    move-object v7, v3

    :goto_0
    const-string v1, "mVersion"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iput-object v1, v7, Lc/e/a/g/c;->a:Ljava/lang/String;

    :cond_4
    const-string v1, "mSubVersion"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v1, v7, Lc/e/a/g/c;->b:Ljava/lang/String;

    :cond_5
    const-string v1, "mBuildId"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iput-object v1, v7, Lc/e/a/g/c;->c:Ljava/lang/String;

    :cond_6
    const-string v1, "crver"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lc/e/a/a/f;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    sput-object v1, Lc/e/a/b;->b:Ljava/lang/String;

    invoke-static {}, Lc/e/a/i;->i()V

    :cond_7
    const-string v1, "enableJavaLog"

    .line 3
    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const-string v1, "enableNativeLog"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v3

    const-string v4, "enableUnexpLog"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "enableANRLog"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    move v9, v1

    move v10, v3

    invoke-static/range {v5 .. v10}, Lc/e/a/g/a;->a(Landroid/content/Context;Lc/e/a/g/b;Lc/e/a/g/c;ZZZ)Lc/e/a/g/a;

    move-result-object v4

    .line 4
    sput-boolean v0, Lc/e/a/c;->K:Z

    sget-boolean v0, Lc/e/a/c;->r:Z

    if-eqz v0, :cond_8

    const/16 v0, 0x1e

    sget-boolean v5, Lc/e/a/c;->K:Z

    invoke-static {v0, v5}, Lcom/uc/crashsdk/JNIBridge;->set(IZ)J

    :cond_8
    if-nez v1, :cond_9

    if-eqz v3, :cond_b

    :cond_9
    const-string v0, "libcrashsdk.so"

    .line 5
    invoke-static {v0}, Lc/e/a/f;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {v4}, Lc/e/a/g/a;->a()V

    goto :goto_1

    :cond_a
    const-string v0, "crashsdk"

    const-string v1, "load libcrashsdk.so failed!"

    invoke-static {v0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    :goto_1
    const/16 v0, 0xf

    const-string v1, "uploadLogDelaySeconds"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_c

    invoke-static {}, Lc/e/a/c;->c()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-static {v0}, Lc/e/a/f;->b(I)V

    :cond_c
    move-object v2, v4

    .line 6
    :goto_2
    sput-object v2, Lcom/aligenie/ags/AgsApp;->c:Lc/e/a/g/a;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/16 v1, 0x64

    const-string v2, "mMaxCustomLogCountPerTypePerDay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mMaxUploadCustomLogCountPerDay"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-wide/32 v1, 0x6400000

    const-string v3, "mMaxUploadBytesPerDay"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const v1, 0x186a0

    const-string v2, "mMaxJavaLogcatLineCount"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/high16 v1, 0xa00000

    const-string v2, "mLogMaxBytesLimit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mLogMaxUploadBytesLimit"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v1, Lcom/aligenie/ags/AgsApp;->c:Lc/e/a/g/a;

    invoke-virtual {v1, v0}, Lc/e/a/g/a;->a(Landroid/os/Bundle;)I

    return-void
.end method
