.class public final enum Lmtopsdk/common/util/TBSdkLog$LogEnable;
.super Ljava/lang/Enum;
.source "TBSdkLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmtopsdk/common/util/TBSdkLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogEnable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lmtopsdk/common/util/TBSdkLog$LogEnable;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum NoneEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum VerboseEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

.field public static final enum WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;


# instance fields
.field private logEnable:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 21
    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v1, 0x0

    const-string v2, "VerboseEnable"

    const-string v3, "V"

    invoke-direct {v0, v2, v1, v3}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->VerboseEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v2, 0x1

    const-string v3, "DebugEnable"

    const-string v4, "D"

    invoke-direct {v0, v3, v2, v4}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v3, 0x2

    const-string v4, "InfoEnable"

    const-string v5, "I"

    invoke-direct {v0, v4, v3, v5}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v4, 0x3

    const-string v5, "WarnEnable"

    const-string v6, "W"

    invoke-direct {v0, v5, v4, v6}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v5, 0x4

    const-string v6, "ErrorEnable"

    const-string v7, "E"

    invoke-direct {v0, v6, v5, v7}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    new-instance v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v6, 0x5

    const-string v7, "NoneEnable"

    const-string v8, "L"

    invoke-direct {v0, v7, v6, v8}, Lmtopsdk/common/util/TBSdkLog$LogEnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->NoneEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    const/4 v0, 0x6

    .line 19
    new-array v0, v0, [Lmtopsdk/common/util/TBSdkLog$LogEnable;

    sget-object v7, Lmtopsdk/common/util/TBSdkLog$LogEnable;->VerboseEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v7, v0, v1

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->DebugEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v2

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->InfoEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->WarnEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v4

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->ErrorEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/common/util/TBSdkLog$LogEnable;->NoneEnable:Lmtopsdk/common/util/TBSdkLog$LogEnable;

    aput-object v1, v0, v6

    sput-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->$VALUES:[Lmtopsdk/common/util/TBSdkLog$LogEnable;

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

    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->logEnable:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/common/util/TBSdkLog$LogEnable;
    .locals 1

    .line 19
    const-class v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;

    return-object p0
.end method

.method public static values()[Lmtopsdk/common/util/TBSdkLog$LogEnable;
    .locals 1

    .line 19
    sget-object v0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->$VALUES:[Lmtopsdk/common/util/TBSdkLog$LogEnable;

    invoke-virtual {v0}, [Lmtopsdk/common/util/TBSdkLog$LogEnable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/common/util/TBSdkLog$LogEnable;

    return-object v0
.end method


# virtual methods
.method public getLogEnable()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lmtopsdk/common/util/TBSdkLog$LogEnable;->logEnable:Ljava/lang/String;

    return-object v0
.end method
