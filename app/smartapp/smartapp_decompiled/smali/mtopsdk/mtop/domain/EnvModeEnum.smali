.class public final enum Lmtopsdk/mtop/domain/EnvModeEnum;
.super Ljava/lang/Enum;
.source "EnvModeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmtopsdk/mtop/domain/EnvModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/EnvModeEnum;

.field public static final enum ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public static final enum PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public static final enum TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

.field public static final enum TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;


# instance fields
.field private envMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 20
    new-instance v0, Lmtopsdk/mtop/domain/EnvModeEnum;

    const/4 v1, 0x0

    const-string v2, "ONLINE"

    invoke-direct {v0, v2, v1, v1}, Lmtopsdk/mtop/domain/EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    new-instance v0, Lmtopsdk/mtop/domain/EnvModeEnum;

    const/4 v2, 0x1

    const-string v3, "PREPARE"

    invoke-direct {v0, v3, v2, v2}, Lmtopsdk/mtop/domain/EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    new-instance v0, Lmtopsdk/mtop/domain/EnvModeEnum;

    const/4 v3, 0x2

    const-string v4, "TEST"

    invoke-direct {v0, v4, v3, v3}, Lmtopsdk/mtop/domain/EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    new-instance v0, Lmtopsdk/mtop/domain/EnvModeEnum;

    const/4 v4, 0x3

    const-string v5, "TEST_SANDBOX"

    invoke-direct {v0, v5, v4, v4}, Lmtopsdk/mtop/domain/EnvModeEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    const/4 v0, 0x4

    .line 12
    new-array v0, v0, [Lmtopsdk/mtop/domain/EnvModeEnum;

    sget-object v5, Lmtopsdk/mtop/domain/EnvModeEnum;->ONLINE:Lmtopsdk/mtop/domain/EnvModeEnum;

    aput-object v5, v0, v1

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->PREPARE:Lmtopsdk/mtop/domain/EnvModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST:Lmtopsdk/mtop/domain/EnvModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/domain/EnvModeEnum;->TEST_SANDBOX:Lmtopsdk/mtop/domain/EnvModeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->$VALUES:[Lmtopsdk/mtop/domain/EnvModeEnum;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput p3, p0, Lmtopsdk/mtop/domain/EnvModeEnum;->envMode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1

    .line 12
    const-class v0, Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object p0
.end method

.method public static values()[Lmtopsdk/mtop/domain/EnvModeEnum;
    .locals 1

    .line 12
    sget-object v0, Lmtopsdk/mtop/domain/EnvModeEnum;->$VALUES:[Lmtopsdk/mtop/domain/EnvModeEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/EnvModeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/EnvModeEnum;

    return-object v0
.end method


# virtual methods
.method public getEnvMode()I
    .locals 1

    .line 25
    iget v0, p0, Lmtopsdk/mtop/domain/EnvModeEnum;->envMode:I

    return v0
.end method
