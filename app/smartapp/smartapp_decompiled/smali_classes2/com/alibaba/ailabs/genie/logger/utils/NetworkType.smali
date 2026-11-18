.class public Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;
.super Ljava/lang/Object;
.source "NetworkType.java"


# static fields
.field public static final NET_2G:Ljava/lang/String; = "2g"

.field public static final NET_3G:Ljava/lang/String; = "3g"

.field public static final NET_4G:Ljava/lang/String; = "4g"

.field public static final NET_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final NET_WIFI:Ljava/lang/String; = "wifi"

.field public static final TYPE_CODE_DEFAULT:I = 0x0

.field public static final TYPE_CODE_WIFI:I = -0x2


# instance fields
.field private code:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->code:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "unknown"

    :cond_0
    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->code:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/logger/utils/NetworkType;->name:Ljava/lang/String;

    return-void
.end method
