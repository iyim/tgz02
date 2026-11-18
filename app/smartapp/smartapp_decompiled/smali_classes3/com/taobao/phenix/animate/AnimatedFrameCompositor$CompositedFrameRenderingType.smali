.class final enum Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
.super Ljava/lang/Enum;
.source "AnimatedFrameCompositor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/phenix/animate/AnimatedFrameCompositor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CompositedFrameRenderingType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

.field public static final enum SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 222
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const/4 v1, 0x0

    const-string v2, "REQUIRED"

    invoke-direct {v0, v2, v1}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 227
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const/4 v2, 0x1

    const-string v3, "NOT_REQUIRED"

    invoke-direct {v0, v3, v2}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 232
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const/4 v3, 0x2

    const-string v4, "SKIP"

    invoke-direct {v0, v4, v3}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    .line 237
    new-instance v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const/4 v4, 0x3

    const-string v5, "ABORT"

    invoke-direct {v0, v5, v4}, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    const/4 v0, 0x4

    .line 218
    new-array v0, v0, [Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    sget-object v5, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->NOT_REQUIRED:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->SKIP:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->ABORT:Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->$VALUES:[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

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

    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    .locals 1

    .line 218
    const-class v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object p0
.end method

.method public static values()[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;
    .locals 1

    .line 218
    sget-object v0, Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->$VALUES:[Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    invoke-virtual {v0}, [Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/taobao/phenix/animate/AnimatedFrameCompositor$CompositedFrameRenderingType;

    return-object v0
.end method
