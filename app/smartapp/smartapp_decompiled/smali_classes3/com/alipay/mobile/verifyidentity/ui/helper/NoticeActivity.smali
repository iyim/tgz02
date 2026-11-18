.class public Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;
.super Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;
.source "NoticeActivity.java"


# static fields
.field private static final a:Ljava/lang/String; = "NoticeActivity"

.field public static alertMsg:Ljava/lang/String;

.field public static alertNegative:Ljava/lang/String;

.field public static alertNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field public static alertPositive:Ljava/lang/String;

.field public static alertPositiveListener:Landroid/content/DialogInterface$OnClickListener;

.field public static alertTitle:Ljava/lang/String;


# instance fields
.field private b:Landroid/os/Handler;

.field public thisAlertNegativeListener:Landroid/content/DialogInterface$OnClickListener;

.field public thisAlertPositiveListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 2

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->b:Landroid/os/Handler;

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

.method private a()V
    .locals 8

    .line 44
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->a:Ljava/lang/String;

    const-string v1, "NoticeActivity showAlert"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$1;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->thisAlertPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    new-instance v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$2;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->thisAlertNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    sget-object v2, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertTitle:Ljava/lang/String;

    sget-object v3, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertMsg:Ljava/lang/String;

    sget-object v4, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertPositive:Ljava/lang/String;

    iget-object v5, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->thisAlertPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    sget-object v6, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertNegative:Ljava/lang/String;

    iget-object v7, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->thisAlertNegativeListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;ILandroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 15
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->a(Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->c()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 87
    :try_start_0
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->a:Ljava/lang/String;

    const-string v1, "clear NoticeActivity data"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 88
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertTitle:Ljava/lang/String;

    .line 89
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertMsg:Ljava/lang/String;

    .line 90
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertPositive:Ljava/lang/String;

    .line 91
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertNegative:Ljava/lang/String;

    .line 93
    sput-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertNegativeListener:Landroid/content/DialogInterface$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private c()V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 119
    invoke-virtual {p0, v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->overridePendingTransition(II)V

    return-void
.end method

.method public static declared-synchronized setAlertInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    const-class v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;

    monitor-enter v0

    .line 109
    :try_start_0
    sput-object p0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertTitle:Ljava/lang/String;

    .line 110
    sput-object p1, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertMsg:Ljava/lang/String;

    .line 111
    sput-object p2, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertPositive:Ljava/lang/String;

    .line 112
    sput-object p3, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertPositiveListener:Landroid/content/DialogInterface$OnClickListener;

    .line 113
    sput-object p4, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertNegative:Ljava/lang/String;

    .line 114
    sput-object p5, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->alertNegativeListener:Landroid/content/DialogInterface$OnClickListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    monitor-exit v0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public finish()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->finish()V

    .line 40
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->b()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->a:Ljava/lang/String;

    const-string v1, "NoticeActivity is onCreate"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Lcom/alipay/mobile/verifyidentity/ui/BaseVerifyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/NoticeActivity;->a()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
