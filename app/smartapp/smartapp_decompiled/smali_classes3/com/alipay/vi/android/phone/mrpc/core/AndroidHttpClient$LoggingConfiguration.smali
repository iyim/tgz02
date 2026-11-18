.class Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;
.super Ljava/lang/Object;
.source "AndroidHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoggingConfiguration"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 402
    iput-object p1, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    .line 403
    iput p2, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->b:I

    .line 404
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "hackbyte "

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$1;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 417
    iget v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->b:I

    iget-object v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private a()Z
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->b:I

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;)Z
    .locals 0

    .line 396
    invoke-direct {p0}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a()Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;Ljava/lang/String;)V
    .locals 0

    .line 396
    invoke-direct {p0, p1}, Lcom/alipay/vi/android/phone/mrpc/core/AndroidHttpClient$LoggingConfiguration;->a(Ljava/lang/String;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
