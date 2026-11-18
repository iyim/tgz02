.class public final enum Lmtopsdk/xstate/NetworkClassEnum;
.super Ljava/lang/Enum;
.source "NetworkClassEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmtopsdk/xstate/NetworkClassEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_ETHERNET:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

.field public static final enum NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;


# instance fields
.field private netClass:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 6
    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v1, 0x0

    const-string v2, "NET_WIFI"

    const-string v3, "WIFI"

    invoke-direct {v0, v2, v1, v3}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v2, 0x1

    const-string v3, "NET_2G"

    const-string v4, "2G"

    invoke-direct {v0, v3, v2, v4}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v3, 0x2

    const-string v4, "NET_3G"

    const-string v5, "3G"

    invoke-direct {v0, v4, v3, v5}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v4, 0x3

    const-string v5, "NET_4G"

    const-string v6, "4G"

    invoke-direct {v0, v5, v4, v6}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v5, 0x4

    const-string v6, "NET_UNKONWN"

    const-string v7, "UNKONWN"

    invoke-direct {v0, v6, v5, v7}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v6, 0x5

    const-string v7, "NET_NO"

    invoke-direct {v0, v7, v6, v7}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    new-instance v0, Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v7, 0x6

    const-string v8, "NET_ETHERNET"

    invoke-direct {v0, v8, v7, v8}, Lmtopsdk/xstate/NetworkClassEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->NET_ETHERNET:Lmtopsdk/xstate/NetworkClassEnum;

    const/4 v0, 0x7

    .line 3
    new-array v0, v0, [Lmtopsdk/xstate/NetworkClassEnum;

    sget-object v8, Lmtopsdk/xstate/NetworkClassEnum;->NET_WIFI:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v8, v0, v1

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_2G:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v2

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_3G:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_4G:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v4

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_UNKONWN:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_NO:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v6

    sget-object v1, Lmtopsdk/xstate/NetworkClassEnum;->NET_ETHERNET:Lmtopsdk/xstate/NetworkClassEnum;

    aput-object v1, v0, v7

    sput-object v0, Lmtopsdk/xstate/NetworkClassEnum;->$VALUES:[Lmtopsdk/xstate/NetworkClassEnum;

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

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lmtopsdk/xstate/NetworkClassEnum;->netClass:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/xstate/NetworkClassEnum;
    .locals 1

    .line 3
    const-class v0, Lmtopsdk/xstate/NetworkClassEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmtopsdk/xstate/NetworkClassEnum;

    return-object p0
.end method

.method public static values()[Lmtopsdk/xstate/NetworkClassEnum;
    .locals 1

    .line 3
    sget-object v0, Lmtopsdk/xstate/NetworkClassEnum;->$VALUES:[Lmtopsdk/xstate/NetworkClassEnum;

    invoke-virtual {v0}, [Lmtopsdk/xstate/NetworkClassEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/xstate/NetworkClassEnum;

    return-object v0
.end method


# virtual methods
.method public getNetClass()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lmtopsdk/xstate/NetworkClassEnum;->netClass:Ljava/lang/String;

    return-object v0
.end method
