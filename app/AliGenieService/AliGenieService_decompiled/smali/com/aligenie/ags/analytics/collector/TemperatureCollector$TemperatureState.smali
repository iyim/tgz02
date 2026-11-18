.class public final enum Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aligenie/ags/analytics/collector/TemperatureCollector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemperatureState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum MACHINE_DORMANT:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

.field public static final enum MACHINE_RUNNING:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

.field public static final enum MACHINE_SCREEN_SAVER_OFF:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

.field public static final enum MACHINE_SCREEN_SAVER_ON:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

.field public static final enum MACHINE_START:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

.field public static final enum MACHINE_WAKE:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

.field public static final synthetic b:[Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;


# instance fields
.field public final mOrdinal:I


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v1, 0x0

    const-string v2, "MACHINE_RUNNING"

    invoke-direct {v0, v2, v1, v1}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_RUNNING:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    new-instance v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v2, 0x1

    const-string v3, "MACHINE_START"

    invoke-direct {v0, v3, v2, v2}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_START:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    new-instance v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v3, 0x2

    const-string v4, "MACHINE_WAKE"

    invoke-direct {v0, v4, v3, v3}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_WAKE:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    new-instance v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v4, 0x3

    const-string v5, "MACHINE_DORMANT"

    invoke-direct {v0, v5, v4, v4}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_DORMANT:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    new-instance v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v5, 0x4

    const-string v6, "MACHINE_SCREEN_SAVER_OFF"

    invoke-direct {v0, v6, v5, v5}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_SCREEN_SAVER_OFF:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    new-instance v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v6, 0x5

    const-string v7, "MACHINE_SCREEN_SAVER_ON"

    invoke-direct {v0, v7, v6, v6}, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_SCREEN_SAVER_ON:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    sget-object v7, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_RUNNING:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    aput-object v7, v0, v1

    sget-object v1, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_START:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_WAKE:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_DORMANT:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_SCREEN_SAVER_OFF:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->MACHINE_SCREEN_SAVER_ON:Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->b:[Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->mOrdinal:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;
    .locals 1

    const-class v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    return-object p0
.end method

.method public static values()[Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;
    .locals 1

    sget-object v0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->b:[Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    invoke-virtual {v0}, [Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;

    return-object v0
.end method


# virtual methods
.method public final getOrdinal()I
    .locals 1

    iget v0, p0, Lcom/aligenie/ags/analytics/collector/TemperatureCollector$TemperatureState;->mOrdinal:I

    return v0
.end method
