.class public Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;
.super Ljava/lang/Object;
.source "ContextDialogHelper.java"


# static fields
.field public static DialogDismissAmount:I = 0x0

.field public static DialogShowAmount:I = 0x0

.field private static final a:Ljava/lang/String; = "ContextDialogHelper"


# instance fields
.field private b:Landroid/os/Handler;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    .line 29
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->c:Landroid/content/Context;

    .line 30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private a()V
    .locals 2

    .line 98
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    const-string v1, "doDismissProgressDialog"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$2;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$2;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V
    .locals 8

    .line 58
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    const-string v1, "showProgressDialog by context"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->setViShowDialogTime(J)V

    .line 61
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a()V

    .line 62
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v7, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$1;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;ZZLandroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic access$000(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;)Landroid/content/Context;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->c:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public alert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 11

    move-object v8, p0

    .line 131
    iget-object v9, v8, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v10, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$3;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public dismissProgressDialog()V
    .locals 2

    .line 86
    sget-object v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a:Ljava/lang/String;

    const-string v1, "dismissProgressDialog by context"

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogShowAmount:I

    if-lez v0, :cond_0

    .line 88
    sget v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->DialogDismissAmount:I

    .line 90
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/alipay/mobile/verifyidentity/ui/helper/DialogActivity;->setViDismissDialogTime(J)V

    .line 91
    invoke-direct {p0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showProgressDialog(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 41
    invoke-direct {p0, p1, v0, v1, v2}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public showProgressDialog(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->a(Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public toast(Ljava/lang/String;I)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$4;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toast(Ljava/lang/String;II)V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;->b:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$5;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper$5;-><init>(Lcom/alipay/mobile/verifyidentity/ui/helper/ContextDialogHelper;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
