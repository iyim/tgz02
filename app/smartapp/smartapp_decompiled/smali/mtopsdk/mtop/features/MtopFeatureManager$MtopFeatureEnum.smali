.class public final enum Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
.super Ljava/lang/Enum;
.source "MtopFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/mtop/features/MtopFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MtopFeatureEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum DISABLE_WHITEBOX_SIGN:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum SUPPORT_OPEN_ACCOUNT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

.field public static final enum UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;


# instance fields
.field feature:J


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 16
    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v1, 0x0

    const-string v2, "SUPPORT_RELATIVE_URL"

    const-wide/16 v3, 0x1

    invoke-direct {v0, v2, v1, v3, v4}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v2, 0x1

    const-string v3, "UNIT_INFO_FEATURE"

    const-wide/16 v4, 0x2

    invoke-direct {v0, v3, v2, v4, v5}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v3, 0x2

    const-string v4, "DISABLE_WHITEBOX_SIGN"

    const-wide/16 v5, 0x3

    invoke-direct {v0, v4, v3, v5, v6}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_WHITEBOX_SIGN:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v4, 0x3

    const-string v5, "SUPPORT_UTDID_UNIT"

    const-wide/16 v6, 0x4

    invoke-direct {v0, v5, v4, v6, v7}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v5, 0x4

    const-string v6, "DISABLE_X_COMMAND"

    const-wide/16 v7, 0x5

    invoke-direct {v0, v6, v5, v7, v8}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    new-instance v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v6, 0x5

    const-string v7, "SUPPORT_OPEN_ACCOUNT"

    const-wide/16 v8, 0x6

    invoke-direct {v0, v7, v6, v8, v9}, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_OPEN_ACCOUNT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    const/4 v0, 0x6

    .line 14
    new-array v0, v0, [Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    sget-object v7, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_RELATIVE_URL:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v7, v0, v1

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->UNIT_INFO_FEATURE:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v2

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_WHITEBOX_SIGN:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_UTDID_UNIT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v4

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->DISABLE_X_COMMAND:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->SUPPORT_OPEN_ACCOUNT:Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    aput-object v1, v0, v6

    sput-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->$VALUES:[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-wide p3, p0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->feature:J

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .locals 1

    .line 14
    const-class v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    return-object p0
.end method

.method public static values()[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;
    .locals 1

    .line 14
    sget-object v0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->$VALUES:[Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;

    return-object v0
.end method


# virtual methods
.method public getFeature()J
    .locals 2

    .line 21
    iget-wide v0, p0, Lmtopsdk/mtop/features/MtopFeatureManager$MtopFeatureEnum;->feature:J

    return-wide v0
.end method
