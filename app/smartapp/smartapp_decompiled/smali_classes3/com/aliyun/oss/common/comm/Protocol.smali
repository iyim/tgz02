.class public final enum Lcom/aliyun/oss/common/comm/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aliyun/oss/common/comm/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aliyun/oss/common/comm/Protocol;

.field public static final enum HTTP:Lcom/aliyun/oss/common/comm/Protocol;

.field public static final enum HTTPS:Lcom/aliyun/oss/common/comm/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lcom/aliyun/oss/common/comm/Protocol;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const-string v3, "http"

    invoke-direct {v0, v2, v1, v3}, Lcom/aliyun/oss/common/comm/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/comm/Protocol;->HTTP:Lcom/aliyun/oss/common/comm/Protocol;

    .line 30
    new-instance v0, Lcom/aliyun/oss/common/comm/Protocol;

    const/4 v2, 0x1

    const-string v3, "HTTPS"

    const-string v4, "https"

    invoke-direct {v0, v3, v2, v4}, Lcom/aliyun/oss/common/comm/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/aliyun/oss/common/comm/Protocol;->HTTPS:Lcom/aliyun/oss/common/comm/Protocol;

    const/4 v0, 0x2

    .line 26
    new-array v0, v0, [Lcom/aliyun/oss/common/comm/Protocol;

    sget-object v3, Lcom/aliyun/oss/common/comm/Protocol;->HTTP:Lcom/aliyun/oss/common/comm/Protocol;

    aput-object v3, v0, v1

    sget-object v1, Lcom/aliyun/oss/common/comm/Protocol;->HTTPS:Lcom/aliyun/oss/common/comm/Protocol;

    aput-object v1, v0, v2

    sput-object v0, Lcom/aliyun/oss/common/comm/Protocol;->$VALUES:[Lcom/aliyun/oss/common/comm/Protocol;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/aliyun/oss/common/comm/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aliyun/oss/common/comm/Protocol;
    .locals 1

    .line 26
    const-class v0, Lcom/aliyun/oss/common/comm/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aliyun/oss/common/comm/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/aliyun/oss/common/comm/Protocol;
    .locals 1

    .line 26
    sget-object v0, Lcom/aliyun/oss/common/comm/Protocol;->$VALUES:[Lcom/aliyun/oss/common/comm/Protocol;

    invoke-virtual {v0}, [Lcom/aliyun/oss/common/comm/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aliyun/oss/common/comm/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/aliyun/oss/common/comm/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
