.class public Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
.super Ljava/lang/Object;
.source "ImagePreview.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$InnerClass;,
        Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;
    }
.end annotation


# static fields
.field private static final MIN_DOUBLE_CLICK_TIME:I = 0x5dc

.field public static final PROGRESS_THEME_CIRCLE_TEXT:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field


# instance fields
.field private bigImageClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;

.field private bigImageLongClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageLongClickListener;

.field private bigImagePageChangeListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

.field private closeIconResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private downIconResId:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private errorPlaceHolder:I
    .annotation build Landroid/support/annotation/DrawableRes;
    .end annotation
.end field

.field private folderName:Ljava/lang/String;

.field private imageInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private isEnableClickClose:Z

.field private isEnableDragClose:Z

.field private isEnableUpDragClose:Z

.field private isShowCloseButton:Z

.field private isShowDownButton:Z

.field private isShowErrorToast:Z

.field private isShowIndicator:Z

.field private lastClickTime:J

.field private loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

.field private maxScale:F

.field private mediumScale:F

.field private minScale:F

.field private onOriginProgressListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

.field private progressLayoutId:I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end field

.field private zoomTransitionDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$layout;->sh_default_progress_layout:I

    sput v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->PROGRESS_THEME_CIRCLE_TEXT:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 3

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->index:I

    const-string v1, "Download"

    .line 39
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->folderName:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 40
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->minScale:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 41
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->mediumScale:F

    const/high16 v1, 0x40a00000    # 5.0f

    .line 42
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->maxScale:F

    const/4 v1, 0x1

    .line 44
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowIndicator:Z

    .line 45
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowCloseButton:Z

    .line 46
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowDownButton:Z

    const/16 v2, 0xc8

    .line 47
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->zoomTransitionDuration:I

    .line 49
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose:Z

    .line 50
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableUpDragClose:Z

    .line 51
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableClickClose:Z

    .line 52
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowErrorToast:Z

    .line 54
    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    .line 56
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$drawable;->ic_action_close:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->closeIconResId:I

    .line 58
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$drawable;->icon_download_new:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->downIconResId:I

    .line 62
    sget v0, Lcom/alibaba/ailabs/genie/image/viewpager/R$drawable;->load_failed:I

    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->errorPlaceHolder:I

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->progressLayoutId:I

    const-wide/16 v0, 0x0

    .line 75
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->lastClickTime:J

    return-void
.end method

.method public static getInstance()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 1

    .line 78
    invoke-static {}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$InnerClass;->access$000()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    move-result-object v0

    return-object v0
.end method

.method private setOnOriginProgressListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 352
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->onOriginProgressListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

    return-object p0
.end method


# virtual methods
.method public getBigImageClickListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImageClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;

    return-object v0
.end method

.method public getBigImageLongClickListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageLongClickListener;
    .locals 1

    .line 330
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImageLongClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageLongClickListener;

    return-object v0
.end method

.method public getBigImagePageChangeListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImagePageChangeListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    return-object v0
.end method

.method public getCloseIconResId()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->closeIconResId:I

    return v0
.end method

.method public getDownIconResId()I
    .locals 1

    .line 294
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->downIconResId:I

    return v0
.end method

.method public getErrorPlaceHolder()I
    .locals 1

    .line 312
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->errorPlaceHolder:I

    return v0
.end method

.method public getFolderName()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->folderName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Download"

    .line 179
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->folderName:Ljava/lang/String;

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->folderName:Ljava/lang/String;

    return-object v0
.end method

.method public getImageInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->index:I

    return v0
.end method

.method public getLoadStrategy()Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 224
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->maxScale:F

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    .line 220
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->mediumScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 216
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->minScale:F

    return v0
.end method

.method public getOnOriginProgressListener()Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->onOriginProgressListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;

    return-object v0
.end method

.method public getProgressLayoutId()I
    .locals 1

    .line 357
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->progressLayoutId:I

    return v0
.end method

.method public getZoomTransitionDuration()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->zoomTransitionDuration:I

    return v0
.end method

.method public isEnableClickClose()Z
    .locals 1

    .line 267
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableClickClose:Z

    return v0
.end method

.method public isEnableDragClose()Z
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose:Z

    return v0
.end method

.method public isEnableUpDragClose()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableUpDragClose:Z

    return v0
.end method

.method public isShowCloseButton()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowCloseButton:Z

    return v0
.end method

.method public isShowDownButton()Z
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowDownButton:Z

    return v0
.end method

.method public isShowErrorToast()Z
    .locals 1

    .line 276
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowErrorToast:Z

    return v0
.end method

.method public isShowIndicator()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowIndicator:Z

    return v0
.end method

.method public isShowOriginButton(I)Z
    .locals 3

    .line 145
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->getImageInfoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 146
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 155
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->NetworkAuto:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p1, v0, :cond_3

    return v1

    .line 159
    :cond_3
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysThumb:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p1, v0, :cond_4

    return v1

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    sget-object v0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->AlwaysOrigin:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    if-ne p1, v0, :cond_5

    :cond_5
    :goto_0
    return v1
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 367
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    const/4 v1, 0x0

    .line 368
    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->index:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 369
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->minScale:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 370
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->mediumScale:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 371
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->maxScale:F

    const/16 v2, 0xc8

    .line 372
    iput v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->zoomTransitionDuration:I

    const/4 v2, 0x1

    .line 373
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowDownButton:Z

    .line 374
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowCloseButton:Z

    .line 375
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose:Z

    .line 376
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableClickClose:Z

    .line 377
    iput-boolean v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowIndicator:Z

    .line 378
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowErrorToast:Z

    .line 380
    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$drawable;->ic_action_close:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->closeIconResId:I

    .line 381
    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$drawable;->icon_download_new:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->downIconResId:I

    .line 382
    sget v1, Lcom/alibaba/ailabs/genie/image/viewpager/R$drawable;->load_failed:I

    iput v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->errorPlaceHolder:I

    .line 384
    sget-object v1, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;->Default:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    const-string v1, "Download"

    .line 385
    iput-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->folderName:Ljava/lang/String;

    .line 386
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->contextWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 388
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 391
    :cond_0
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImageClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;

    .line 392
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImageLongClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageLongClickListener;

    .line 393
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImagePageChangeListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    const/4 v0, -0x1

    .line 395
    iput v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->progressLayoutId:I

    const-wide/16 v0, 0x0

    .line 396
    iput-wide v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->lastClickTime:J

    return-void
.end method

.method public setBigImageClickListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImageClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageClickListener;

    return-object p0
.end method

.method public setBigImageLongClickListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageLongClickListener;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 334
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImageLongClickListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImageLongClickListener;

    return-object p0
.end method

.method public setBigImagePageChangeListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->bigImagePageChangeListener:Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnBigImagePageChangeListener;

    return-object p0
.end method

.method public setCloseIconResId(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 289
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->closeIconResId:I

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->contextWeakReference:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public setDownIconResId(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .param p1    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .line 298
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->downIconResId:I

    return-object p0
.end method

.method public setEnableClickClose(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 271
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableClickClose:Z

    return-object p0
.end method

.method public setEnableDragClose(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 253
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableDragClose:Z

    return-object p0
.end method

.method public setEnableUpDragClose(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isEnableUpDragClose:Z

    return-object p0
.end method

.method public setErrorPlaceHolder(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 316
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->errorPlaceHolder:I

    return-object p0
.end method

.method public setFolderName(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 185
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->folderName:Ljava/lang/String;

    return-object p0
.end method

.method public setImage(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    .line 110
    new-instance v0, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-direct {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;-><init>()V

    .line 111
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->setThumbnailUrl(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v0, p1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->setOriginUrl(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public setImageInfoList(Ljava/util/List;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;",
            ">;)",
            "Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;"
        }
    .end annotation

    .line 91
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    return-object p0
.end method

.method public setImageList(Ljava/util/List;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;"
        }
    .end annotation

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    const/4 v0, 0x0

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    new-instance v1, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;

    invoke-direct {v1}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;-><init>()V

    .line 100
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->setThumbnailUrl(Ljava/lang/String;)V

    .line 101
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/alibaba/ailabs/genie/image/viewpager/bean/ImageInfo;->setOriginUrl(Ljava/lang/String;)V

    .line 102
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setIndex(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 122
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->index:I

    return-object p0
.end method

.method public setLoadStrategy(Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->loadStrategy:Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview$LoadStrategy;

    return-object p0
.end method

.method public setProgressLayoutId(ILcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 361
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->setOnOriginProgressListener(Lcom/alibaba/ailabs/genie/image/viewpager/view/listener/OnOriginProgressListener;)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;

    .line 362
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->progressLayoutId:I

    return-object p0
.end method

.method public setScaleLevel(III)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-le p3, p2, :cond_0

    if-le p2, p1, :cond_0

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 206
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->minScale:F

    int-to-float p1, p2

    .line 207
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->mediumScale:F

    int-to-float p1, p3

    .line 208
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->maxScale:F

    return-object p0

    .line 210
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max must greater to medium, medium must greater to min!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScaleMode(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setShowCloseButton(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowCloseButton:Z

    return-object p0
.end method

.method public setShowDownButton(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 131
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowDownButton:Z

    return-object p0
.end method

.method public setShowErrorToast(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 280
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowErrorToast:Z

    return-object p0
.end method

.method public setShowIndicator(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->isShowIndicator:Z

    return-object p0
.end method

.method public setShowOriginButton(Z)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public setZoomTransitionDuration(I)Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;
    .locals 1

    if-ltz p1, :cond_0

    .line 235
    iput p1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->zoomTransitionDuration:I

    return-object p0

    .line 233
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zoomTransitionDuration must greater 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public start()V
    .locals 5

    .line 400
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->lastClickTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const-string v0, "ImagePreview"

    const-string v1, "---\u5ffd\u7565\u591a\u6b21\u5feb\u901f\u70b9\u51fb---"

    .line 401
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->contextWeakReference:Ljava/lang/ref/WeakReference;

    const-string v1, "You must call \'setContext(Context context)\' first!"

    if-eqz v0, :cond_8

    .line 407
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 411
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 414
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 415
    move-object v1, v0

    nop

    nop

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 416
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->reset()V

    return-void

    .line 420
    :cond_2
    move-object v1, v0

    nop

    nop

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 421
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->reset()V

    return-void

    .line 425
    :cond_3
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 429
    iget v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->index:I

    iget-object v2, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->imageInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 432
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/alibaba/ailabs/genie/image/viewpager/ImagePreview;->lastClickTime:J

    .line 433
    invoke-static {v0}, Lcom/alibaba/ailabs/genie/image/viewpager/view/ImagePreviewActivity;->activityStart(Landroid/content/Context;)V

    return-void

    .line 430
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 426
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do you forget to call \'setImageInfoList(List<ImageInfo> imageInfoList)\' ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 412
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must be a Activity!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 409
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 405
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
