.class public Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;
.super Ljava/lang/Object;
.source "DXSliderLayout.java"

# interfaces
.implements Lcom/taobao/android/dinamicx/view/DXNativeAutoLoopRecyclerView$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXSliderLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SliderPageChangeListener"
.end annotation


# instance fields
.field private dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

.field private itemCount:I

.field private sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;


# direct methods
.method public constructor <init>(Lcom/taobao/android/dinamicx/widget/DXSliderLayout;I)V
    .locals 3

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 348
    new-instance v0, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    const-wide v1, -0x7c8e4c808bab3e54L    # -4.434513990302719E-292

    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;-><init>(J)V

    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    .line 351
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    .line 352
    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->itemCount:I

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 5

    .line 357
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->itemCount:I

    if-nez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    .line 359
    new-instance v1, Lcom/taobao/android/dinamicx/DXError;

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getBizType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/taobao/android/dinamicx/DXError;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getDxTemplateItem()Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    move-result-object v0

    iput-object v0, v1, Lcom/taobao/android/dinamicx/DXError;->dxTemplateItem:Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;

    .line 361
    new-instance v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;

    const v2, 0x30d40

    const-string v3, "Engine"

    const-string v4, "Engine_Render"

    invoke-direct {v0, v3, v4, v2}, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "position="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/taobao/android/dinamicx/DXError$DXErrorInfo;->reason:Ljava/lang/String;

    .line 364
    iget-object p1, v1, Lcom/taobao/android/dinamicx/DXError;->dxErrorInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    invoke-static {v1}, Lcom/taobao/android/dinamicx/monitor/DXAppMonitor;->trackerError(Lcom/taobao/android/dinamicx/DXError;)V

    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->access$000(Lcom/taobao/android/dinamicx/widget/DXSliderLayout;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    iget v1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->itemCount:I

    rem-int/2addr p1, v1

    iput p1, v0, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;->pageIndex:I

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    iput p1, v0, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;->pageIndex:I

    .line 378
    :goto_0
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    if-eqz p1, :cond_2

    .line 379
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    iget-object p1, p1, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->indicatorWidgetNode:Lcom/taobao/android/dinamicx/widget/DXWidgetNode;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    .line 382
    :cond_2
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    iget v0, v0, Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;->pageIndex:I

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->setPageIndex(I)V

    .line 383
    iget-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->sliderLayout:Lcom/taobao/android/dinamicx/widget/DXSliderLayout;

    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXSliderLayout$SliderPageChangeListener;->dxPageChangeEvent:Lcom/taobao/android/dinamicx/expression/event/DXPageChangeEvent;

    invoke-virtual {p1, v0}, Lcom/taobao/android/dinamicx/widget/DXSliderLayout;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    return-void
.end method
