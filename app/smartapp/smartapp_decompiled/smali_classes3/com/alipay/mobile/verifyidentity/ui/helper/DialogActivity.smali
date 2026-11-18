.class public Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "DialogActivity.java"


# static fields
.field public static KEY_VI_DIALOG_CANCELABLE:Ljava/lang/String; = "KEY_VI_DIALOG_CANCELABLE"

.field public static KEY_VI_DIALOG_MSG:Ljava/lang/String; = "KEY_VI_DIALOG_MSG"

.field public static KEY_VI_DIALOG_SHOW_PROGRESSBAR:Ljava/lang/String; = "KEY_VI_DIALOG_SHOW_PROGRESSBAR"

.field private static final a:Ljava/lang/String; = "DialogActivity"

.field private static b:J = 0x1L

.field private static c:J

.field public static onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public VI_DIALOG_CANCELABLE:Z

.field public VI_DIALOG_SHOW_PROGRESSBAR:Z

.field public VI_SHOW_DIALOG_MSG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_CANCELABLE:Z

    .line 21
    iput-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_SHOW_PROGRESSBAR:Z

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hackbyte "

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static a(J)Ljava/lang/String;
    .locals 3

    .line 113
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    .line 114
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 115
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 118
    sget-object p1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, ""

    return-object p0
.end method

.method private static a()V
    .locals 6

    .line 96
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show progress time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-static {v2, v3}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dismiss progress time: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-static {v4, v5}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 14
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$201(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V
    .locals 0

    .line 14
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->finish()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private b()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 125
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public static needOrCanShow()Z
    .locals 6

    .line 134
    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    const/4 v4, 0x0

    cmp-long v5, v0, v2

    if-gtz v5, :cond_0

    .line 135
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a()V

    .line 136
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string v1, "no need to show progress.[by time]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    sput v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 138
    sput v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    return v4

    .line 141
    :cond_0
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    sget v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    if-gt v0, v1, :cond_1

    .line 142
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string v1, "no need to show progress. [by amount]"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogShowAmount is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogDismissAmount is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    sput v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 146
    sput v4, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    return v4

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static setViDismissDialogTime(J)V
    .locals 2

    .line 107
    sput-wide p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    .line 108
    sget-object p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set dismiss progress time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setViShowDialogTime(J)V
    .locals 2

    .line 101
    sput-wide p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    .line 102
    sget-object p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "set show progress time: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->dismissProgressDialog()V

    .line 83
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->updateDialogActivity(Landroid/app/Activity;)V

    const/4 v0, 0x0

    .line 84
    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 85
    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    .line 86
    sput-object v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->onBizCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 87
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 31
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string v1, "DialogActivity is onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_MSG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    .line 35
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_CANCELABLE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_CANCELABLE:Z

    .line 36
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_SHOW_PROGRESSBAR:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_SHOW_PROGRESSBAR:Z

    .line 38
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->getInstance()Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivityHelper;->updateDialogActivity(Landroid/app/Activity;)V

    .line 39
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a()V

    .line 40
    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 41
    sget-object p1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string v0, "can show progress"

    invoke-static {p1, v0}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->KEY_VI_DIALOG_MSG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_SHOW_DIALOG_MSG:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_CANCELABLE:Z

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;)V

    iget-boolean v2, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->VI_DIALOG_SHOW_PROGRESSBAR:Z

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    :cond_2
    return-void
.end method

.method protected onResume()V
    .locals 5

    .line 64
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onResume()V

    .line 65
    sget-wide v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b:J

    sget-wide v2, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->c:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 66
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a()V

    .line 67
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string v1, "can not show progress."

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b()V

    return-void

    .line 72
    :cond_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogShowAmount is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DialogDismissAmount is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    sget v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    if-gt v0, v1, :cond_1

    .line 75
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->a:Ljava/lang/String;

    const-string v1, "no need to show progress. sth is wrong"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->b()V

    :cond_1
    return-void
.end method
