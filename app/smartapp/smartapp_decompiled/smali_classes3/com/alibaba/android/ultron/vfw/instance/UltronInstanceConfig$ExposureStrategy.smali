.class public final enum Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;
.super Ljava/lang/Enum;
.source "UltronInstanceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ExposureStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

.field public static final enum EXPOSURE_DEAFULT:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

.field public static final enum EXPOSURE_ONCE:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 92
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    const/4 v1, 0x0

    const-string v2, "EXPOSURE_DEAFULT"

    invoke-direct {v0, v2, v1}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->EXPOSURE_DEAFULT:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    .line 93
    new-instance v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    const/4 v2, 0x1

    const-string v3, "EXPOSURE_ONCE"

    invoke-direct {v0, v3, v2}, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->EXPOSURE_ONCE:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    const/4 v0, 0x2

    .line 91
    new-array v0, v0, [Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    sget-object v3, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->EXPOSURE_DEAFULT:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->EXPOSURE_ONCE:Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->$VALUES:[Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

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

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;
    .locals 1

    .line 91
    const-class v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    return-object p0
.end method

.method public static values()[Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;
    .locals 1

    .line 91
    sget-object v0, Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->$VALUES:[Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    invoke-virtual {v0}, [Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alibaba/android/ultron/vfw/instance/UltronInstanceConfig$ExposureStrategy;

    return-object v0
.end method
