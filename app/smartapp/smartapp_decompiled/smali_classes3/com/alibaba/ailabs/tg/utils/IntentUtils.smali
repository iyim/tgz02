.class public Lcom/alibaba/ailabs/tg/utils/IntentUtils;
.super Ljava/lang/Object;
.source "IntentUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCallIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CALL_PHONE"
    .end annotation

    const/4 v0, 0x0

    .line 393
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getCallIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getCallIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .annotation build Landroid/support/annotation/RequiresPermission;
        value = "android.permission.CALL_PHONE"
    .end annotation

    .line 406
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.CALL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 407
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureIntent(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 445
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getCaptureIntent(Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getCaptureIntent(Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "output"

    .line 457
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p0, 0x1

    .line 458
    invoke-virtual {v0, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 282
    invoke-static {p0, p1, v0, v1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 310
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;
    .locals 2

    .line 326
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 327
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 328
    :cond_0
    new-instance p2, Landroid/content/ComponentName;

    invoke-direct {p2, p0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 330
    invoke-static {v0, p3}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getComponentIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 296
    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getComponentIntent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getDialIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 369
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getDialIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 380
    new-instance v0, Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 381
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getInstallAppIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 67
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getInstallAppIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getInstallAppIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 85
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_1

    .line 89
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 91
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 92
    invoke-static {p0, p2, p1}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    const-string p1, "application/vnd.android.package-archive"

    .line 94
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {v0, p3}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getInstallAppIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    invoke-static {p1}, Lcom/alibaba/ailabs/tg/utils/FileUtils;->getFileByPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getInstallAppIntent(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    .line 463
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getLaunchAppDetailsSettingsIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 163
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 165
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getLaunchAppIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 128
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getLaunchAppIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getLaunchAppIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 0
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 141
    :cond_0
    invoke-static {p0, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getQueryParameter(Landroid/content/Intent;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 31
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 35
    invoke-virtual {p0}, Landroid/net/Uri;->isHierarchical()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", param: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/alibaba/ailabs/tg/utils/LogUtils;->v(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 418
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getSendSmsIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "smsto:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 433
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1, p0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string p0, "sms_body"

    .line 434
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getSettingsIntent()Landroid/content/Intent;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 468
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getShareImageIntent(Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 253
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShareImageIntent(Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShareImageIntent(Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TEXT"

    .line 268
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.STREAM"

    .line 269
    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "image/*"

    .line 270
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    invoke-static {v0, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShareImageIntent(Ljava/lang/String;Ljava/io/File;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 227
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShareImageIntent(Ljava/lang/String;Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShareImageIntent(Ljava/lang/String;Ljava/io/File;Z)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_0

    .line 241
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 242
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShareImageIntent(Ljava/lang/String;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShareImageIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 201
    invoke-static {p0, p1, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShareImageIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShareImageIntent(Ljava/lang/String;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 1

    if-eqz p1, :cond_1

    .line 215
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShareImageIntent(Ljava/lang/String;Ljava/io/File;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getShareTextIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 175
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShareTextIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShareTextIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2

    .line 187
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "text/plain"

    .line 188
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    .line 189
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getShutdownIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-static {v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getShutdownIntent(Z)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getShutdownIntent(Z)Landroid/content/Intent;
    .locals 3

    .line 357
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    .line 358
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 359
    invoke-static {v0, p0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getUninstallAppIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-static {p0, v0}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getUninstallAppIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static getUninstallAppIntent(Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 3

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 118
    invoke-static {v0, p1}, Lcom/alibaba/ailabs/tg/utils/IntentUtils;->getIntent(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method
