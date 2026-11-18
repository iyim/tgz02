.class final enum Lcom/airbnb/lottie/Mask$MaskMode;
.super Ljava/lang/Enum;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "MaskMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/airbnb/lottie/Mask$MaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/lottie/Mask$MaskMode;

.field public static final enum MaskModeAdd:Lcom/airbnb/lottie/Mask$MaskMode;

.field public static final enum MaskModeIntersect:Lcom/airbnb/lottie/Mask$MaskMode;

.field public static final enum MaskModeSubtract:Lcom/airbnb/lottie/Mask$MaskMode;

.field public static final enum MaskModeUnknown:Lcom/airbnb/lottie/Mask$MaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/airbnb/lottie/Mask$MaskMode;

    const/4 v1, 0x0

    const-string v2, "MaskModeAdd"

    invoke-direct {v0, v2, v1}, Lcom/airbnb/lottie/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 8
    new-instance v0, Lcom/airbnb/lottie/Mask$MaskMode;

    const/4 v2, 0x1

    const-string v3, "MaskModeSubtract"

    invoke-direct {v0, v3, v2}, Lcom/airbnb/lottie/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 9
    new-instance v0, Lcom/airbnb/lottie/Mask$MaskMode;

    const/4 v3, 0x2

    const-string v4, "MaskModeIntersect"

    invoke-direct {v0, v4, v3}, Lcom/airbnb/lottie/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/Mask$MaskMode;

    .line 10
    new-instance v0, Lcom/airbnb/lottie/Mask$MaskMode;

    const/4 v4, 0x3

    const-string v5, "MaskModeUnknown"

    invoke-direct {v0, v5, v4}, Lcom/airbnb/lottie/Mask$MaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/Mask$MaskMode;

    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [Lcom/airbnb/lottie/Mask$MaskMode;

    sget-object v5, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/Mask$MaskMode;

    aput-object v5, v0, v1

    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/Mask$MaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/Mask$MaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/lottie/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/Mask$MaskMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->$VALUES:[Lcom/airbnb/lottie/Mask$MaskMode;

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

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/lottie/Mask$MaskMode;
    .locals 1

    .line 6
    const-class v0, Lcom/airbnb/lottie/Mask$MaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/airbnb/lottie/Mask$MaskMode;

    return-object p0
.end method

.method public static values()[Lcom/airbnb/lottie/Mask$MaskMode;
    .locals 1

    .line 6
    sget-object v0, Lcom/airbnb/lottie/Mask$MaskMode;->$VALUES:[Lcom/airbnb/lottie/Mask$MaskMode;

    invoke-virtual {v0}, [Lcom/airbnb/lottie/Mask$MaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/lottie/Mask$MaskMode;

    return-object v0
.end method
