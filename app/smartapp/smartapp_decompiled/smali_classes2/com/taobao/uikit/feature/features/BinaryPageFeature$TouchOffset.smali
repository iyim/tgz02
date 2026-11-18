.class Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;
.super Ljava/lang/Object;
.source "BinaryPageFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/uikit/feature/features/BinaryPageFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TouchOffset"
.end annotation


# instance fields
.field private endY:F

.field private offsetLimit:F

.field private record:Z

.field private startPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

.field private startY:F

.field final synthetic this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;


# direct methods
.method constructor <init>(Lcom/taobao/uikit/feature/features/BinaryPageFeature;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->this$0:Lcom/taobao/uikit/feature/features/BinaryPageFeature;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 371
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->record:Z

    .line 373
    sget-object p1, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    const/high16 p1, 0x43200000    # 160.0f

    .line 375
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->offsetLimit:F

    return-void
.end method


# virtual methods
.method public getCurrentPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;
    .locals 3

    .line 392
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getOffset()F

    move-result v0

    .line 394
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->offsetLimit:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_0

    .line 395
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-object v0

    :cond_0
    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    .line 398
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->FIRST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-object v0

    .line 400
    :cond_1
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->LAST:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-object v0
.end method

.method public getOffset()F
    .locals 2

    .line 417
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->record:Z

    if-eqz v0, :cond_0

    .line 418
    iget v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->endY:F

    iget v1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startY:F

    sub-float/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getOffsetLimit()F
    .locals 1

    .line 426
    iget v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->offsetLimit:F

    return v0
.end method

.method public getStartPage()Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-object v0
.end method

.method public isDown()Z
    .locals 2

    .line 413
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRecord()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->record:Z

    return v0
.end method

.method public isUp()Z
    .locals 2

    .line 409
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUpDown()Z
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->getOffset()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 442
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->record:Z

    .line 443
    sget-object v0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;->NONE:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    iput-object v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-void
.end method

.method public setEndY(F)V
    .locals 0

    .line 384
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->endY:F

    return-void
.end method

.method public setOffsetLimit(F)V
    .locals 0

    .line 430
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->offsetLimit:F

    return-void
.end method

.method public setRecord(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->record:Z

    return-void
.end method

.method public startRecord(FLcom/taobao/uikit/feature/features/BinaryPageFeature$Page;)V
    .locals 1

    const/4 v0, 0x1

    .line 378
    iput-boolean v0, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->record:Z

    .line 379
    iput p1, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startY:F

    .line 380
    iput-object p2, p0, Lcom/taobao/uikit/feature/features/BinaryPageFeature$TouchOffset;->startPage:Lcom/taobao/uikit/feature/features/BinaryPageFeature$Page;

    return-void
.end method
