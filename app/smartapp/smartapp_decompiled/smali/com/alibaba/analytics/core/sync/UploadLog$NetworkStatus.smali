.class public final enum Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
.super Ljava/lang/Enum;
.source "UploadLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/analytics/core/sync/UploadLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

.field public static final enum WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v1, 0x0

    const-string v2, "ALL"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v2, 0x1

    const-string v3, "WIFI"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v3, 0x2

    const-string v4, "TWO_GENERATION"

    invoke-direct {v0, v4, v3}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v4, 0x3

    const-string v5, "THRID_GENERATION"

    invoke-direct {v0, v5, v4}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v5, 0x4

    const-string v6, "FOUR_GENERATION"

    invoke-direct {v0, v6, v5}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    new-instance v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v6, 0x5

    const-string v7, "NONE"

    invoke-direct {v0, v7, v6}, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    const/4 v0, 0x6

    .line 22
    new-array v0, v0, [Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    sget-object v7, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->ALL:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v7, v0, v1

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->WIFI:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->TWO_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->THRID_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->FOUR_GENERATION:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->NONE:Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->$VALUES:[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 1

    .line 22
    const-class v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;
    .locals 1

    .line 22
    sget-object v0, Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->$VALUES:[Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    invoke-virtual {v0}, [Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/analytics/core/sync/UploadLog$NetworkStatus;

    return-object v0
.end method
