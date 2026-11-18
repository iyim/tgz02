.class public final enum Lmtopsdk/mtop/domain/EntranceEnum;
.super Ljava/lang/Enum;
.source "EntranceEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmtopsdk/mtop/domain/EntranceEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/EntranceEnum;

.field public static final enum GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

.field public static final enum GW_OPEN:Lmtopsdk/mtop/domain/EntranceEnum;


# instance fields
.field private entrance:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lmtopsdk/mtop/domain/EntranceEnum;

    const/4 v1, 0x0

    const-string v2, "GW_INNER"

    const-string v3, "gw"

    invoke-direct {v0, v2, v1, v3}, Lmtopsdk/mtop/domain/EntranceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

    new-instance v0, Lmtopsdk/mtop/domain/EntranceEnum;

    const/4 v2, 0x1

    const-string v3, "GW_OPEN"

    const-string v4, "gw-open"

    invoke-direct {v0, v3, v2, v4}, Lmtopsdk/mtop/domain/EntranceEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->GW_OPEN:Lmtopsdk/mtop/domain/EntranceEnum;

    const/4 v0, 0x2

    .line 6
    new-array v0, v0, [Lmtopsdk/mtop/domain/EntranceEnum;

    sget-object v3, Lmtopsdk/mtop/domain/EntranceEnum;->GW_INNER:Lmtopsdk/mtop/domain/EntranceEnum;

    aput-object v3, v0, v1

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->GW_OPEN:Lmtopsdk/mtop/domain/EntranceEnum;

    aput-object v1, v0, v2

    sput-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->$VALUES:[Lmtopsdk/mtop/domain/EntranceEnum;

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

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput-object p3, p0, Lmtopsdk/mtop/domain/EntranceEnum;->entrance:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/EntranceEnum;
    .locals 1

    .line 6
    const-class v0, Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmtopsdk/mtop/domain/EntranceEnum;

    return-object p0
.end method

.method public static values()[Lmtopsdk/mtop/domain/EntranceEnum;
    .locals 1

    .line 6
    sget-object v0, Lmtopsdk/mtop/domain/EntranceEnum;->$VALUES:[Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/EntranceEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/EntranceEnum;

    return-object v0
.end method


# virtual methods
.method public getEntrance()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lmtopsdk/mtop/domain/EntranceEnum;->entrance:Ljava/lang/String;

    return-object v0
.end method
