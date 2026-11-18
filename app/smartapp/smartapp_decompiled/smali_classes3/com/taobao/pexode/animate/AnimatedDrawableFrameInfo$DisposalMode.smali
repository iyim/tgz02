.class public final enum Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
.super Ljava/lang/Enum;
.source "AnimatedDrawableFrameInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DisposalMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

.field public static final enum DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

.field public static final enum DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

.field public static final enum DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 37
    new-instance v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    const/4 v1, 0x0

    const-string v2, "DISPOSE_DO_NOT"

    invoke-direct {v0, v2, v1}, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 42
    new-instance v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    const/4 v2, 0x1

    const-string v3, "DISPOSE_TO_BACKGROUND"

    invoke-direct {v0, v3, v2}, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    .line 47
    new-instance v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    const/4 v3, 0x2

    const-string v4, "DISPOSE_TO_PREVIOUS"

    invoke-direct {v0, v4, v3}, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    const/4 v0, 0x3

    .line 32
    new-array v0, v0, [Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    sget-object v4, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_DO_NOT:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    aput-object v4, v0, v1

    sget-object v1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_BACKGROUND:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->DISPOSE_TO_PREVIOUS:Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->$VALUES:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

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

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    .locals 1

    .line 32
    const-class v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    return-object p0
.end method

.method public static values()[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;
    .locals 1

    .line 32
    sget-object v0, Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->$VALUES:[Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    invoke-virtual {v0}, [Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/pexode/animate/AnimatedDrawableFrameInfo$DisposalMode;

    return-object v0
.end method
