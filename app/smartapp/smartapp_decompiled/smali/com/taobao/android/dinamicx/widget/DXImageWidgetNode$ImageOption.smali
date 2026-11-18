.class public Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;
.super Ljava/lang/Object;
.source "DXImageWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageOption"
.end annotation


# instance fields
.field private animated:Z

.field public autoRelease:Z

.field public borderColor:I

.field public borderWidth:I

.field public cornerRadii:[I

.field private darkModeOverlayOpacity:D

.field private forceOriginal:Z

.field private isNeedBorderColor:Z

.field private isNeedBorderWidth:Z

.field private isNeedClipRadius:Z

.field private isNeedLimitSize:Z

.field private isNeedSetImageUrl:Z

.field public listener:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;

.field public module:Ljava/lang/String;

.field private needDarkModeOverlay:Z

.field public placeHolder:Landroid/graphics/drawable/Drawable;

.field public placeHolderResId:I

.field public sizeType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 493
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->autoRelease:Z

    return-void
.end method

.method static synthetic access$000(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;)Z
    .locals 0

    .line 493
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedSetImageUrl:Z

    return p0
.end method

.method static synthetic access$002(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedSetImageUrl:Z

    return p1
.end method

.method static synthetic access$102(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedClipRadius:Z

    return p1
.end method

.method static synthetic access$202(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedBorderWidth:Z

    return p1
.end method

.method static synthetic access$302(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedBorderColor:Z

    return p1
.end method

.method static synthetic access$402(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedLimitSize:Z

    return p1
.end method

.method static synthetic access$502(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->animated:Z

    return p1
.end method

.method static synthetic access$602(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->forceOriginal:Z

    return p1
.end method

.method static synthetic access$702(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;D)D
    .locals 0

    .line 493
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->darkModeOverlayOpacity:D

    return-wide p1
.end method

.method static synthetic access$802(Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;Z)Z
    .locals 0

    .line 493
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->needDarkModeOverlay:Z

    return p1
.end method


# virtual methods
.method public getBorderColor()I
    .locals 1

    .line 596
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->borderColor:I

    return v0
.end method

.method public getBorderWidth()I
    .locals 1

    .line 600
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->borderWidth:I

    return v0
.end method

.method public getCornerRadii()[I
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->cornerRadii:[I

    return-object v0
.end method

.method public getDarkModeOverlayOpacity()D
    .locals 2

    .line 568
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->darkModeOverlayOpacity:D

    return-wide v0
.end method

.method public getListener()Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->listener:Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageLoadListener;

    return-object v0
.end method

.method public getModule()Ljava/lang/String;
    .locals 1

    .line 576
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->module:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceHolder()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolder:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPlaceHolderResId()I
    .locals 1

    .line 580
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->placeHolderResId:I

    return v0
.end method

.method public getSizeType()Ljava/lang/String;
    .locals 1

    .line 588
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->sizeType:Ljava/lang/String;

    return-object v0
.end method

.method public isAnimated()Z
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->animated:Z

    return v0
.end method

.method public isAutoRelease()Z
    .locals 1

    .line 564
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->autoRelease:Z

    return v0
.end method

.method public isForceOriginal()Z
    .locals 1

    .line 552
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->forceOriginal:Z

    return v0
.end method

.method public isNeedBorderColor()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedBorderColor:Z

    return v0
.end method

.method public isNeedBorderWidth()Z
    .locals 1

    .line 548
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedBorderWidth:Z

    return v0
.end method

.method public isNeedClipRadius()Z
    .locals 1

    .line 536
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedClipRadius:Z

    return v0
.end method

.method public isNeedDarkModeOverlay()Z
    .locals 1

    .line 556
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->needDarkModeOverlay:Z

    return v0
.end method

.method public isNeedLimitSize()Z
    .locals 1

    .line 540
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedLimitSize:Z

    return v0
.end method

.method public isNeedSetImageUrl()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXImageWidgetNode$ImageOption;->isNeedSetImageUrl:Z

    return v0
.end method
