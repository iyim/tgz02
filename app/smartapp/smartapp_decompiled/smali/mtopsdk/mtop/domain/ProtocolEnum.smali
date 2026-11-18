.class public final enum Lmtopsdk/mtop/domain/ProtocolEnum;
.super Ljava/lang/Enum;
.source "ProtocolEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmtopsdk/mtop/domain/ProtocolEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/ProtocolEnum;

.field public static final enum HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

.field public static final enum HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;


# instance fields
.field private protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 9
    new-instance v0, Lmtopsdk/mtop/domain/ProtocolEnum;

    const/4 v1, 0x0

    const-string v2, "HTTP"

    const-string v3, "http://"

    invoke-direct {v0, v2, v1, v3}, Lmtopsdk/mtop/domain/ProtocolEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    new-instance v0, Lmtopsdk/mtop/domain/ProtocolEnum;

    const/4 v2, 0x1

    const-string v3, "HTTPSECURE"

    const-string v4, "https://"

    invoke-direct {v0, v3, v2, v4}, Lmtopsdk/mtop/domain/ProtocolEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    const/4 v0, 0x2

    .line 7
    new-array v0, v0, [Lmtopsdk/mtop/domain/ProtocolEnum;

    sget-object v3, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTP:Lmtopsdk/mtop/domain/ProtocolEnum;

    aput-object v3, v0, v1

    sget-object v1, Lmtopsdk/mtop/domain/ProtocolEnum;->HTTPSECURE:Lmtopsdk/mtop/domain/ProtocolEnum;

    aput-object v1, v0, v2

    sput-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->$VALUES:[Lmtopsdk/mtop/domain/ProtocolEnum;

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

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput-object p3, p0, Lmtopsdk/mtop/domain/ProtocolEnum;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/ProtocolEnum;
    .locals 1

    .line 7
    const-class v0, Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object p0
.end method

.method public static values()[Lmtopsdk/mtop/domain/ProtocolEnum;
    .locals 1

    .line 7
    sget-object v0, Lmtopsdk/mtop/domain/ProtocolEnum;->$VALUES:[Lmtopsdk/mtop/domain/ProtocolEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/ProtocolEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/ProtocolEnum;

    return-object v0
.end method


# virtual methods
.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 14
    iget-object v0, p0, Lmtopsdk/mtop/domain/ProtocolEnum;->protocol:Ljava/lang/String;

    return-object v0
.end method
