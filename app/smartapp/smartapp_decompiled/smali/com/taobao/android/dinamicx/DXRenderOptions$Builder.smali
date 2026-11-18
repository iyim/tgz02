.class public final Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
.super Ljava/lang/Object;
.source "DXRenderOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/DXRenderOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private fromStage:I

.field private heightSpec:I

.field private isCanceled:Z

.field private isControlEvent:Z

.field private objectUserContext:Ljava/lang/Object;

.field private renderType:I

.field private toStage:I

.field private userContext:Lcom/taobao/android/dinamicx/DXUserContext;

.field private widthSpec:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec()I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->widthSpec:I

    .line 127
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultHeightSpec()I

    move-result v0

    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->heightSpec:I

    const/4 v0, 0x0

    .line 128
    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->fromStage:I

    const/16 v0, 0x8

    .line 129
    iput v0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->toStage:I

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->widthSpec:I

    return p0
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->heightSpec:I

    return p0
.end method

.method static synthetic access$200(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Lcom/taobao/android/dinamicx/DXUserContext;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    return-object p0
.end method

.method static synthetic access$300(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Ljava/lang/Object;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->objectUserContext:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$400(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->isControlEvent:Z

    return p0
.end method

.method static synthetic access$500(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)Z
    .locals 0

    .line 114
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->isCanceled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->fromStage:I

    return p0
.end method

.method static synthetic access$700(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->toStage:I

    return p0
.end method

.method static synthetic access$800(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;)I
    .locals 0

    .line 114
    iget p0, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->renderType:I

    return p0
.end method


# virtual methods
.method public build()Lcom/taobao/android/dinamicx/DXRenderOptions;
    .locals 2

    .line 178
    new-instance v0, Lcom/taobao/android/dinamicx/DXRenderOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/taobao/android/dinamicx/DXRenderOptions;-><init>(Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;Lcom/taobao/android/dinamicx/DXRenderOptions$1;)V

    return-object v0
.end method

.method withFromStage(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 168
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->fromStage:I

    return-object p0
.end method

.method public withHeightSpec(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 138
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->heightSpec:I

    return-object p0
.end method

.method withIsCanceled(Z)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 158
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->isCanceled:Z

    return-object p0
.end method

.method withIsControlEvent(Z)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->isControlEvent:Z

    return-object p0
.end method

.method public withObjectUserContext(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->objectUserContext:Ljava/lang/Object;

    return-object p0
.end method

.method withPreType(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 163
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->renderType:I

    return-object p0
.end method

.method withToStage(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 173
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->toStage:I

    return-object p0
.end method

.method public withUserContext(Lcom/taobao/android/dinamicx/DXUserContext;)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->userContext:Lcom/taobao/android/dinamicx/DXUserContext;

    return-object p0
.end method

.method public withWidthSpec(I)Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;
    .locals 0

    .line 133
    iput p1, p0, Lcom/taobao/android/dinamicx/DXRenderOptions$Builder;->widthSpec:I

    return-object p0
.end method
