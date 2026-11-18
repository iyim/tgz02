.class public Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;
.super Landroid/view/View;
.source "LrcView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;,
        Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;
    }
.end annotation


# static fields
.field private static final ADJUST_DURATION:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "LrcView"

.field private static final TIMELINE_KEEP_TIME:J = 0xfa0L


# instance fields
.field private hideTimelineRunnable:Ljava/lang/Runnable;

.field private isFling:Z

.field private isShowTimeline:Z

.field private isTouching:Z

.field private mAnimationDuration:J

.field private mAnimator:Landroid/animation/ValueAnimator;

.field private mCanDrag:Z

.field private mCurrentLine:I

.field private mCurrentLineY:F

.field private mCurrentTextColor:I

.field private mCurrentTextSize:F

.field private mCursorTextColor:I

.field private mCursorYend:I

.field private mCursorYstart:I

.field private mDefaultLabel:Ljava/lang/String;

.field private mDividerHeight:F

.field private mDrawableWidth:I

.field private mFlag:Ljava/lang/Object;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHasFinished:Z

.field private mHasSampled:Z

.field private mLrcEntryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mLrcIsFullView:I

.field private mLrcPadding:F

.field private mLrcPaint:Landroid/text/TextPaint;

.field private mNormalTextColor:I

.field private mNormalTextSize:F

.field private mOffset:F

.field private mOnLrcLineClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;

.field private mOnPlayClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;

.field private mPlayDrawable:Landroid/graphics/drawable/Drawable;

.field private mPosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mScroller:Landroid/widget/Scroller;

.field private mShowedLinePosMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartY:F

.field private mSumOfTranslate:F

.field private mTextGravity:I

.field private mTimePaint:Landroid/text/TextPaint;

.field private mTimeTextColor:I

.field private mTimeTextWidth:I

.field private mTimelineColor:I

.field private mTimelineTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 155
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 159
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    .line 59
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    .line 60
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1}, Landroid/text/TextPaint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    .line 66
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mShowedLinePosMap:Ljava/util/Map;

    .line 71
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPosMap:Ljava/util/Map;

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCanDrag:Z

    .line 656
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$4;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 730
    new-instance p1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$5;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    .line 160
    invoke-direct {p0, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/lang/Object;
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getFlag()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOnPlayClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCanDrag:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)I
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->findClickedLine(F)I

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOnLrcLineClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)I
    .locals 0

    .line 53
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    return p0
.end method

.method static synthetic access$1400(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/Map;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPosMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    return p0
.end method

.method static synthetic access$1600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLineY:F

    return p0
.end method

.method static synthetic access$1700(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->initEntryList()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/util/List;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->onLrcLoaded(Ljava/util/List;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$1900(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/Object;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$200(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Landroid/widget/Scroller;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$300(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/lang/Runnable;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$402(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isTouching:Z

    return p1
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isShowTimeline:Z

    return p0
.end method

.method static synthetic access$502(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isShowTimeline:Z

    return p1
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)F
    .locals 0

    .line 53
    iget p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    return p0
.end method

.method static synthetic access$602(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;F)F
    .locals 0

    .line 53
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    return p1
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;I)F
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getOffset(I)F

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)Ljava/util/List;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$902(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isFling:Z

    return p1
.end method

.method private adjustCenter()V
    .locals 3

    .line 837
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getCenterLine()I

    move-result v0

    const-wide/16 v1, 0x64

    invoke-direct {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->smoothScrollTo(IJ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private cancelAnimation()V
    .locals 1

    .line 876
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V
    .locals 1

    .line 624
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 625
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPadding:F

    invoke-virtual {p1, v0, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 626
    invoke-virtual {p2, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 627
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private endAnimation()V
    .locals 1

    .line 870
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    :cond_0
    return-void
.end method

.method private findClickedLine(F)I
    .locals 3

    .line 720
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mShowedLinePosMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 721
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    cmpl-float v2, v2, p1

    if-ltz v2, :cond_0

    .line 722
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 v1, p1, -0x1

    goto :goto_1

    .line 725
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    :goto_1
    return v1
.end method

.method private findShowLine(J)I
    .locals 7

    .line 886
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v2, v0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-gt v0, v2, :cond_4

    add-int v3, v0, v2

    .line 891
    div-int/lit8 v3, v3, 0x2

    .line 892
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_2

    add-int/lit8 v3, v3, -0x1

    move v2, v3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v3, 0x1

    .line 897
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getTime()J

    move-result-wide v4

    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    :cond_3
    return v3

    :cond_4
    return v1
.end method

.method private getCenterLine()I
    .locals 5

    const/4 v0, 0x0

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    .line 914
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 915
    iget v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getOffset(I)F

    move-result v4

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v3, v3, v2

    if-gez v3, :cond_0

    .line 916
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getOffset(I)F

    move-result v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    move v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getFlag()Ljava/lang/Object;
    .locals 1

    .line 963
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mFlag:Ljava/lang/Object;

    return-object v0
.end method

.method private getLrcWidth()F
    .locals 3

    .line 948
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPadding:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    return v0
.end method

.method private getOffset(I)F
    .locals 2

    .line 928
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    if-gez p1, :cond_0

    goto :goto_0

    .line 932
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    const/4 v1, 0x1

    if-ge p1, v1, :cond_1

    return v0

    .line 936
    :cond_1
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPosMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    .line 937
    iget p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    return p1

    .line 939
    :cond_2
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPosMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLineY:F

    sub-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 7

    const-string v0, "LrcView"

    const-string v1, "---init"

    .line 164
    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 166
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTextSize:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextSize:F

    .line 167
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcNormalTextSize:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_text_size:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextSize:F

    .line 170
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcDividerHeight:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_divider_height:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDividerHeight:F

    .line 171
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcHighLightYPos:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_high_light_y_pos:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLineY:F

    .line 174
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$integer;->lrc_animation_duration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 175
    sget v2, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcAnimationDuration:I

    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimationDuration:J

    .line 176
    iget-wide v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimationDuration:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    int-to-long v2, v1

    :cond_0
    iput-wide v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimationDuration:J

    .line 177
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcNormalTextColor:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->lrc_normal_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextColor:I

    .line 178
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcCurrentTextColor:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->lrc_current_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextColor:I

    .line 179
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTimelineTextColor:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->lrc_timeline_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimelineTextColor:I

    .line 180
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcCursorTextColor:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->lrc_cursor_text_color:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCursorTextColor:I

    .line 181
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcCursorYstart:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_cursor_y_start:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCursorYstart:I

    .line 182
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcCursorYend:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_cursor_y_end:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCursorYend:I

    .line 185
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcPadding:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPadding:F

    .line 186
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcIsFullView:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcIsFullView:I

    .line 187
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTimelineColor:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->lrc_timeline_color:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimelineColor:I

    .line 188
    sget v1, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTimelineHeight:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_timeline_height:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 189
    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcPlayDrawable:I

    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$drawable;->icon_lrc_play:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_1
    iput-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    .line 191
    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTimeTextColor:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$color;->lrc_time_text_color:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimeTextColor:I

    .line 192
    sget v3, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTimeTextSize:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_time_text_size:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    .line 193
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcTextGravity:I

    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v4

    iput v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTextGravity:I

    .line 194
    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$styleable;->LrcView_lrcStartYOffset:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_high_light_y_pos:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    iput v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mStartY:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    iput v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    .line 197
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 199
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_drawable_width:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDrawableWidth:I

    .line 200
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v4, Lcom/alibaba/ailabs/genie/musicplayer/R$dimen;->lrc_time_width:I

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimeTextWidth:I

    .line 202
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 203
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 204
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 206
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 207
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 209
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 210
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimePaint:Landroid/text/TextPaint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 212
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {p1, v1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 213
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p1, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 214
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    .line 215
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentLineY:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLineY:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mNormalTextSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",mCurrentTextSize:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "mDividerHeight,:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDividerHeight:F

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private initEntryList()V
    .locals 5

    .line 807
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    .line 811
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getLrcWidth()F

    move-result v3

    float-to-int v3, v3

    iget v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {v1, v2, v3, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->init(Landroid/text/TextPaint;II)V

    goto :goto_0

    .line 814
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    :cond_2
    :goto_1
    return-void
.end method

.method private initPlayDrawable()V
    .locals 5

    .line 799
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimeTextWidth:I

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDrawableWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 800
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDrawableWidth:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    add-int v3, v0, v2

    add-int/2addr v2, v1

    .line 803
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPlayDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v0, v1, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method private onLrcLoaded(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 770
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 774
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 776
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->initEntryList()V

    .line 777
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method private runOnUi(Ljava/lang/Runnable;)V
    .locals 2

    .line 955
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 956
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 958
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private setFlag(Ljava/lang/Object;)V
    .locals 0

    .line 967
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mFlag:Ljava/lang/Object;

    return-void
.end method

.method private smoothScrollTo(I)V
    .locals 2

    .line 844
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimationDuration:J

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->smoothScrollTo(IJ)V

    return-void
.end method

.method private smoothScrollTo(IJ)V
    .locals 3

    .line 851
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getOffset(I)F

    move-result p1

    .line 852
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->endAnimation()V

    const/4 v0, 0x2

    .line 855
    new-array v0, v0, [F

    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    .line 856
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 857
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 858
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$69V03grQtCCXUZc0Lstb51Sid_M;

    invoke-direct {p2, p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$69V03grQtCCXUZc0Lstb51Sid_M;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 863
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 1

    .line 748
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    .line 750
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    .line 753
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isFling:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isFling:Z

    .line 755
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isTouching:Z

    :cond_1
    return-void
.end method

.method public getCurrentLineY()F
    .locals 1

    .line 228
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLineY:F

    return v0
.end method

.method public getDividerHeight()F
    .locals 1

    .line 236
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDividerHeight:F

    return v0
.end method

.method public hasLrc()Z
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public synthetic lambda$loadLrc$52$LrcView(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->reset()V

    .line 355
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "#"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    .line 362
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 375
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$loadLrc$53$LrcView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 396
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->reset()V

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const-string v1, "#"

    .line 401
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 404
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    .line 405
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$2;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$2;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 418
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public synthetic lambda$setLabel$51$LrcView(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDefaultLabel:Ljava/lang/String;

    .line 332
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$smoothScrollTo$55$LrcView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 859
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    .line 860
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method public synthetic lambda$updateTime$54$LrcView(JJ)V
    .locals 1

    .line 471
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 474
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isShowTimeline:Z

    if-eqz v0, :cond_1

    return-void

    .line 477
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->findShowLine(J)I

    move-result p1

    if-gez p1, :cond_2

    return-void

    .line 481
    :cond_2
    iget p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    if-eq p1, p2, :cond_3

    .line 482
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    .line 484
    invoke-direct {p0, p1, p3, p4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->smoothScrollTo(IJ)V

    :cond_3
    return-void
.end method

.method public loadLrc(Ljava/io/File;)V
    .locals 1

    const/4 v0, 0x0

    .line 342
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrc(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method public loadLrc(Ljava/io/File;Ljava/io/File;)V
    .locals 1

    .line 352
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$UCP9PoCJ-5DvcODGRGkZmBt9QLI;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/io/File;Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadLrc(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrc(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadLrc(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 395
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$-nKlGD8cxvIzS42LBQPEJnD3Exo;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$-nKlGD8cxvIzS42LBQPEJnD3Exo;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public loadLrcByUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "utf-8"

    .line 428
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->loadLrcByUrl(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadLrcByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "url://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->setFlag(Ljava/lang/Object;)V

    .line 440
    new-instance v1, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;

    invoke-direct {v1, p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    const/4 p1, 0x1

    aput-object p2, v0, p1

    .line 452
    invoke-virtual {v1, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public loadLrcEntryList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;",
            ">;)V"
        }
    .end annotation

    .line 781
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$6;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$6;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/util/List;)V

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 764
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 765
    iput-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    .line 766
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method public onDrag(J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 507
    iget-wide v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mAnimationDuration:J

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->updateTime(JJ)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .annotation build Landroid/support/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 525
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 526
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 530
    :cond_0
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 531
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    iput v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mSumOfTranslate:F

    .line 532
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mShowedLinePosMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 535
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 536
    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mHasFinished:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isShowTimeline:Z

    if-nez v2, :cond_2

    .line 537
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    sub-int/2addr v0, v2

    move v3, v0

    .line 542
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    add-int/lit8 v0, v0, 0x6

    .line 543
    iget-object v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    .line 544
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_2
    move v2, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v2, v0, :cond_10

    .line 548
    iget-boolean v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mHasFinished:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isShowTimeline:Z

    if-nez v5, :cond_5

    if-lez v2, :cond_4

    if-ne v2, v3, :cond_3

    .line 551
    iget-object v4, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPosMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    sub-float/2addr v4, v5

    goto :goto_1

    .line 553
    :cond_3
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDividerHeight:F

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_1

    :cond_5
    if-lez v2, :cond_6

    .line 560
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDividerHeight:F

    add-float/2addr v5, v7

    add-float/2addr v4, v5

    .line 563
    :cond_6
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mPosMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v8, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    add-float/2addr v8, v4

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "LrcView"

    if-ne v2, v6, :cond_7

    .line 566
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "highLightPos:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    add-float/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const/4 v7, 0x3

    if-ne v2, v7, :cond_8

    .line 569
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "line4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    add-float/2addr v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    :cond_8
    :goto_1
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v2, v5, :cond_9

    .line 573
    iput-boolean v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mHasFinished:Z

    .line 575
    :cond_9
    iget v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mSumOfTranslate:F

    add-float/2addr v5, v4

    .line 576
    iget v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    if-ne v2, v6, :cond_a

    .line 577
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 578
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextColor:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_2

    .line 584
    :cond_a
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 585
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextColor:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    :goto_2
    cmpl-float v6, v5, v1

    if-ltz v6, :cond_b

    .line 588
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_b

    .line 589
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mShowedLinePosMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    :cond_b
    iget-boolean v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isTouching:Z

    if-eqz v6, :cond_d

    .line 592
    iget v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCursorYstart:I

    int-to-float v6, v6

    cmpl-float v6, v5, v6

    if-lez v6, :cond_c

    iget v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCursorYend:I

    int-to-float v6, v6

    cmpg-float v6, v5, v6

    if-gez v6, :cond_c

    .line 593
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCursorTextColor:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_3

    .line 595
    :cond_c
    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextColor:I

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 598
    :cond_d
    :goto_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getHeight()I

    move-result v6

    add-int/lit8 v7, v6, -0x27

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_f

    int-to-float v6, v6

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_f

    .line 601
    iget v7, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcIsFullView:I

    if-nez v7, :cond_f

    sub-float/2addr v6, v5

    const-wide v7, 0x405b800000000000L    # 110.0

    cmpl-float v5, v6, v1

    if-ltz v5, :cond_e

    float-to-double v5, v6

    const-wide v9, 0x4043800000000000L    # 39.0

    .line 604
    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v5, v9

    mul-double v7, v7, v5

    .line 608
    :cond_e
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    double-to-int v6, v7

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 611
    :cond_f
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    iget-object v6, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getLrcWidth()F

    move-result v7

    float-to-int v7, v7

    iget v8, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTextGravity:I

    invoke-virtual {v5, v6, v7, v8}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->initStaticLayout(Landroid/text/TextPaint;II)V

    .line 613
    iget-object v5, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcEntry;->getStaticLayout()Landroid/text/StaticLayout;

    move-result-object v5

    invoke-direct {p0, p1, v5, v4}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->drawText(Landroid/graphics/Canvas;Landroid/text/StaticLayout;F)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_10
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 512
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 632
    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCanDrag:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 633
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 634
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->performClick()Z

    return v1

    .line 636
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    return v2

    :cond_1
    return v1

    .line 640
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v2, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 641
    :cond_3
    iput-boolean v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isTouching:Z

    .line 642
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isFling:Z

    if-nez v0, :cond_4

    .line 644
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 645
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0xfa0

    invoke-virtual {p0, v0, v1, v2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 648
    :cond_4
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public reset()V
    .locals 3

    .line 818
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->endAnimation()V

    .line 819
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mScroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    const/4 v0, 0x0

    .line 820
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isShowTimeline:Z

    .line 821
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isTouching:Z

    .line 822
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->isFling:Z

    .line 823
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hideTimelineRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 824
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcEntryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 825
    iget-object v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mLrcPaint:Landroid/text/TextPaint;

    iget v2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextSize:F

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 826
    iget v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mStartY:F

    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    const/4 v1, -0x1

    .line 827
    iput v1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLine:I

    .line 828
    iput-boolean v0, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mHasFinished:Z

    .line 829
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method public setCurrentColor(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextColor:I

    .line 262
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setCurrentLineY(F)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentLineY:F

    return-void
.end method

.method public setCurrentTextSize(F)V
    .locals 0

    .line 254
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCurrentTextSize:F

    return-void
.end method

.method public setDividerHeight(F)V
    .locals 0

    .line 240
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mDividerHeight:F

    return-void
.end method

.method public setDraggable(Z)V
    .locals 0

    .line 308
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCanDrag:Z

    return-void
.end method

.method public setDraggable(ZLcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;)V
    .locals 0

    .line 296
    iput-boolean p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mCanDrag:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 301
    iput-object p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOnPlayClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;

    goto :goto_0

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "if draggable == true, onPlayClickListener must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 303
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOnPlayClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;

    :goto_0
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 330
    new-instance v0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$aGr-2tm1bBol9rQ_mFRXb9WNvXE;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$aGr-2tm1bBol9rQ_mFRXb9WNvXE;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->runOnUi(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setLineClickListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOnLrcLineClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnLrcLineClickListener;

    return-void
.end method

.method public setNormalColor(I)V
    .locals 0

    .line 223
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextColor:I

    .line 224
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setNormalTextSize(F)V
    .locals 0

    .line 247
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mNormalTextSize:F

    return-void
.end method

.method public setOnPlayClickListener(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 323
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOnPlayClickListener:Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView$OnPlayClickListener;

    return-void
.end method

.method public setTimeTextColor(I)V
    .locals 0

    .line 285
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimeTextColor:I

    .line 286
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setTimelineColor(I)V
    .locals 0

    .line 277
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimelineColor:I

    .line 278
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public setTimelineTextColor(I)V
    .locals 0

    .line 269
    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mTimelineTextColor:I

    .line 270
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->postInvalidate()V

    return-void
.end method

.method public updateOffset(J)V
    .locals 1

    .line 490
    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->endAnimation()V

    .line 491
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->hasLrc()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 494
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->findShowLine(J)I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    .line 495
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->getOffset(I)F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    .line 496
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateOffset, mOffset:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->mOffset:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LrcView"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/genie/musicplayer/log/LogHelper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->invalidate()V

    return-void
.end method

.method public updateTime(JJ)V
    .locals 7

    .line 470
    new-instance v6, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;

    move-object v0, v6

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/-$$Lambda$LrcView$1V4MvWUFSsgwYjZ5nZ1LTHyFSTY;-><init>(Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;JJ)V

    invoke-virtual {p0, v6}, Lcom/alibaba/ailabs/genie/musicplayer/ui/lrcview/LrcView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
