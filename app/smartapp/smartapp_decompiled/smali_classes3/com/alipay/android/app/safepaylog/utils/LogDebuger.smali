.class public Lcom/alipay/android/app/safepaylog/utils/LogDebuger;
.super Ljava/lang/Object;
.source "LogDebuger.java"


# static fields
.field private static DEBUG:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static initialize(Landroid/content/Context;)V
    .locals 0

    if-nez p0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 14
    :cond_0
    invoke-static {p0}, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->isDebug(Landroid/content/Context;)Z

    move-result p0

    sput-boolean p0, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->DEBUG:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static isDebug()Z
    .locals 1

    .line 18
    sget-boolean v0, Lcom/alipay/android/app/safepaylog/utils/LogDebuger;->DEBUG:Z

    return v0
.end method

.method private static isDebug(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    .line 24
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 25
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method
