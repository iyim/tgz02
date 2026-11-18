.class public Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$InputTextFilter;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnScrollListener;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnValueChangeListener;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$TwoDigitFormatter;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Order;,
        Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Orientation;
    }
.end annotation


# static fields
.field public static final ASCENDING:I = 0x0

.field private static final DEFAULT_DIVIDER_COLOR:I = -0x1000000

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DEFAULT_MAX_HEIGHT:I = 0xb4

.field private static final DEFAULT_MAX_VALUE:I = 0x64

.field private static final DEFAULT_MIN_VALUE:I = 0x1

.field private static final DEFAULT_MIN_WIDTH:I = 0x40

.field private static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field private static final DEFAULT_TEXT_SIZE:F = 25.0f

.field private static final DEFAULT_WHEEL_ITEM_COUNT:I = 0x3

.field public static final DESCENDING:I = 0x1

.field private static final DIGIT_CHARACTERS:[C

.field private static final FADING_EDGE_STRENGTH:F = 0.9f

.field public static final HORIZONTAL:I = 0x0

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_THICKNESS:I = 0x2

.field public static final VERTICAL:I = 0x1

.field private static final sTwoDigitFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$TwoDigitFormatter;


# instance fields
.field private final mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentScrollOffset:I

.field private mDisplayedValues:[Ljava/lang/String;

.field private mFadingEdgeEnabled:Z

.field private final mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

.field private mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

.field private mHeight:F

.field private mInitialScrollOffset:I

.field private mLastDownEventX:F

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventX:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLeftOfSelectionDividerLeft:I

.field private mLongPressUpdateInterval:J

.field private mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMinHeight:I

.field private mMinValue:I

.field private mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnValueChangeListener;

.field private mOrder:I

.field private mOrientation:I

.field private mPreviousScrollerX:I

.field private mPreviousScrollerY:I

.field private mRealWheelItemCount:I

.field private mRightOfSelectionDividerRight:I

.field private mScrollState:I

.field private mScrollerEnabled:Z

.field private final mSelectedText:Landroid/widget/EditText;

.field private mSelectedTextCenterX:F

.field private mSelectedTextCenterY:F

.field private mSelectedTextColor:I

.field private mSelectedTextSize:F

.field private mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private mSelectionDividerColor:I

.field private mSelectionDividerThickness:I

.field private mSelectionDividersDistance:I

.field private mSelectorElementSize:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private mSelectorTextGapWidth:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

.field private mTextColor:I

.field private mTextSize:F

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mTypeface:Landroid/graphics/Typeface;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWheelItemCount:I

.field private mWheelMiddleItemIndex:I

.field private mWidth:F

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$TwoDigitFormatter;

    invoke-direct {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$TwoDigitFormatter;-><init>()V

    sput-object v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->sTwoDigitFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$TwoDigitFormatter;

    const/16 v0, 0x1f

    .line 2033
    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
        0x2ds
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 588
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 598
    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 609
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x1000000

    .line 239
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    .line 244
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    const/high16 v1, 0x41c80000    # 25.0f

    .line 249
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    .line 254
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    const/4 v1, 0x1

    .line 279
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    const/16 v2, 0x64

    .line 284
    iput v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    const-wide/16 v2, 0x12c

    .line 314
    iput-wide v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    .line 319
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v2, 0x3

    .line 324
    iput v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    .line 329
    iput v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRealWheelItemCount:I

    .line 334
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    div-int/lit8 v3, v2, 0x2

    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    .line 339
    new-array v2, v2, [I

    iput-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    const/high16 v2, -0x80000000

    .line 354
    iput v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 444
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerColor:I

    const/4 v0, 0x0

    .line 459
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollState:I

    const/4 v2, -0x1

    .line 484
    iput v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 509
    iput-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    .line 514
    iput-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollerEnabled:Z

    .line 610
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    .line 612
    sget-object v3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker:[I

    invoke-virtual {p1, p2, v3, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 616
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_dividerColor:I

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerColor:I

    invoke-virtual {p2, p3, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerColor:I

    .line 620
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v3, 0x42400000    # 48.0f

    .line 618
    invoke-static {v1, v3, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 621
    sget v3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_dividerDistance:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    .line 626
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v3, 0x40000000    # 2.0f

    .line 624
    invoke-static {v1, v3, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    .line 627
    sget v3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_dividerThickness:I

    invoke-virtual {p2, v3, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    .line 630
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_order:I

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOrder:I

    .line 631
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_orientation:I

    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOrientation:I

    .line 633
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_width:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWidth:F

    .line 634
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_height:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mHeight:F

    .line 636
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWidthAndHeight()V

    .line 638
    iput-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    .line 640
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_value:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    .line 641
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_max:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    .line 642
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_min:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    .line 644
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_selectedTextColor:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    .line 645
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_selectedTextSize:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->spToPx(F)F

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    .line 646
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_textColor:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    .line 647
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_textSize:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->spToPx(F)F

    move-result v2

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    .line 648
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_typeface:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    .line 649
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_formatter:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->stringToFormatter(Ljava/lang/String;)Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    .line 650
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_fadingEdgeEnabled:I

    iget-boolean v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    .line 651
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_scrollerEnabled:I

    iget-boolean v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollerEnabled:Z

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollerEnabled:Z

    .line 652
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_wheelItemCount:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    .line 659
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWillNotDraw(Z)V

    const-string p3, "layout_inflater"

    .line 661
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 662
    sget v2, Lcom/alibaba/ailabs/genie/setting/R$layout;->number_picker_with_selector_wheel:I

    invoke-virtual {p3, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 665
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$id;->np__numberpicker_input:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/EditText;

    iput-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    .line 666
    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 667
    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 668
    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 671
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    .line 672
    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 673
    sget-object v0, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 674
    iput-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 676
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setSelectedTextColor(I)V

    .line 677
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTextColor(I)V

    .line 678
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTextSize(F)V

    .line 679
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setSelectedTextSize(F)V

    .line 680
    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTypeface(Landroid/graphics/Typeface;)V

    .line 681
    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setFormatter(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;)V

    .line 682
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 684
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setValue(I)V

    .line 685
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setMaxValue(I)V

    .line 686
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setMinValue(I)V

    .line 688
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerColor:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setDividerColor(I)V

    .line 690
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWheelItemCount(I)V

    .line 692
    sget p3, Lcom/alibaba/ailabs/genie/setting/R$styleable;->NumberPicker_np_wrapSelectorWheel:I

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    .line 693
    iget-boolean p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 695
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWidth:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v2, p3, v0

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mHeight:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_0

    .line 696
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setScaleX(F)V

    .line 697
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mHeight:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxHeight:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setScaleY(F)V

    goto :goto_0

    .line 698
    :cond_0
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWidth:F

    cmpl-float v2, p3, v0

    if-eqz v2, :cond_1

    .line 699
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setScaleX(F)V

    .line 700
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWidth:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setScaleY(F)V

    goto :goto_0

    .line 701
    :cond_1
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mHeight:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_2

    .line 702
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxHeight:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setScaleX(F)V

    .line 703
    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mHeight:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxHeight:I

    int-to-float v0, v0

    div-float/2addr p3, v0

    invoke-virtual {p0, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setScaleY(F)V

    .line 707
    :cond_2
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p3

    .line 708
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTouchSlop:I

    .line 709
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    .line 710
    invoke-virtual {p3}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p3

    div-int/lit8 p3, p3, 0x8

    iput p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    .line 713
    new-instance p3, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v0, 0x0

    invoke-direct {p3, p1, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    .line 714
    new-instance p3, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v0, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p3, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    .line 716
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x10

    if-lt p1, p3, :cond_3

    .line 718
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_3

    .line 719
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setImportantForAccessibility(I)V

    .line 723
    :cond_3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method static synthetic access$1000(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)J
    .locals 2

    .line 49
    iget-wide v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$300()[C
    .locals 1

    .line 49
    sget-object v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    return p0
.end method

.method static synthetic access$700(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;II)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postSetSelectionCommand(II)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static synthetic access$800(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$900(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->changeValueByOne(Z)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private changeValueByOne(Z)V
    .locals 14

    .line 1727
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1728
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1729
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->moveToFinalScrollerPosition(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;)Z

    .line 1731
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1732
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    if-eqz p1, :cond_1

    .line 1734
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    neg-int v5, p1

    const/4 v6, 0x0

    const/16 v7, 0x12c

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1736
    :cond_1
    iget-object v8, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    const/4 v12, 0x0

    const/16 v13, 0x12c

    invoke-virtual/range {v8 .. v13}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1739
    :cond_2
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_3

    .line 1741
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    neg-int v4, p1

    const/16 v5, 0x12c

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1743
    :cond_3
    iget-object v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    const/16 v11, 0x12c

    invoke-virtual/range {v6 .. v11}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->startScroll(IIIII)V

    .line 1746
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 1866
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    .line 1867
    aget v2, p1, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1869
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 1870
    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 1871
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    :cond_1
    const/4 v1, 0x0

    .line 1873
    aput v0, p1, v1

    .line 1874
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private dpToPx(F)F
    .locals 1

    .line 2323
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 1882
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1883
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 1887
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 1890
    :cond_1
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int v1, p1, v1

    .line 1892
    aget-object v1, v2, v1

    goto :goto_1

    .line 1894
    :cond_2
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, ""

    .line 1897
    :goto_1
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 8

    .line 2116
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 2118
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/lit8 v4, v3, 0x2

    if-le v2, v4, :cond_1

    if-lez v0, :cond_0

    neg-int v3, v3

    :cond_0
    add-int/2addr v0, v3

    :cond_1
    move v6, v0

    .line 2121
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2122
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    .line 2123
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const/16 v7, 0x320

    move v5, v6

    move v6, v0

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 2125
    :cond_2
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 2126
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v7, 0x320

    invoke-virtual/range {v2 .. v7}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->startScroll(IIIII)V

    .line 2128
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v1
.end method

.method private fling(I)V
    .locals 9

    .line 1810
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1811
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    if-lez p1, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1815
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const v1, 0x7fffffff

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0x7fffffff

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1818
    :cond_1
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_2

    .line 1820
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1822
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move v4, p1

    invoke-virtual/range {v0 .. v8}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->fling(IIIIIIII)V

    .line 1826
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private formatNumberWithLocale(I)Ljava/lang/String;
    .locals 3

    .line 2165
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%d"

    invoke-static {v0, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getMaxTextSize()F
    .locals 2

    .line 1248
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private getPaintCenterY(Landroid/graphics/Paint$FontMetrics;)F
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1255
    :cond_0
    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->top:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    return p1
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 1987
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1989
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1994
    :goto_0
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1996
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1997
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1998
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    add-int/2addr p1, v0

    return p1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2007
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    .line 2012
    :catch_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    return p1
.end method

.method private getSelectorIndices()[I
    .locals 1

    .line 1842
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    return-object v0
.end method

.method public static final getTwoDigitFormatter()Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 193
    sget-object v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->sTwoDigitFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 2

    .line 1833
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1834
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, v1

    rem-int/2addr p1, v0

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1835
    :cond_0
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-ge p1, v1, :cond_1

    sub-int p1, v1, p1

    sub-int v1, v0, v1

    .line 1836
    rem-int/2addr p1, v1

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    const/4 v0, 0x0

    .line 1850
    :goto_0
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 1851
    aget v2, p1, v1

    aput v2, p1, v0

    move v0, v1

    goto :goto_0

    .line 1853
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 1854
    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 1855
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    .line 1857
    :cond_1
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    aput v0, p1, v1

    .line 1858
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .line 1770
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1771
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setHorizontalFadingEdgeEnabled(Z)V

    .line 1772
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    goto :goto_0

    .line 1774
    :cond_0
    invoke-virtual {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setVerticalFadingEdgeEnabled(Z)V

    .line 1775
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    float-to-int v1, v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setFadingEdgeLength(I)V

    :goto_0
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1750
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1751
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 1752
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    float-to-int v2, v2

    mul-int v1, v1, v2

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    .line 1753
    array-length v0, v0

    int-to-float v0, v0

    .line 1754
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1755
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 1756
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorTextGapWidth:I

    .line 1757
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMaxTextSize()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorTextGapWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    .line 1758
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextCenterX:F

    float-to-int v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    goto :goto_0

    .line 1760
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    div-float/2addr v1, v0

    float-to-int v0, v1

    .line 1761
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1762
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMaxTextSize()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    .line 1763
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextCenterY:F

    float-to-int v0, v0

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    mul-int v1, v1, v2

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    .line 1765
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1766
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1679
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1680
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 1681
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1682
    :goto_0
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 1683
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    sub-int v3, v2, v3

    add-int/2addr v3, v1

    .line 1684
    iget-boolean v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1685
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1687
    :cond_0
    aput v3, v0, v2

    .line 1688
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return p1

    .line 1606
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 1607
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    return p1

    .line 1616
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown measure mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1614
    :cond_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 1612
    :cond_3
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1
.end method

.method private moveToFinalScrollerPosition(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 778
    invoke-virtual {p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 779
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 780
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getFinalX()I

    move-result v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getCurrX()I

    move-result p1

    sub-int/2addr v1, p1

    .line 781
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    rem-int/2addr p1, v3

    .line 782
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, p1

    if-eqz v3, :cond_5

    .line 784
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/lit8 v5, v4, 0x2

    if-le p1, v5, :cond_1

    if-lez v3, :cond_0

    sub-int/2addr v3, v4

    goto :goto_0

    :cond_0
    add-int/2addr v3, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v3

    .line 792
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->scrollBy(II)V

    return v0

    .line 796
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 797
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    rem-int/2addr p1, v3

    .line 798
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v3, p1

    if-eqz v3, :cond_5

    .line 800
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/lit8 v5, v4, 0x2

    if-le p1, v5, :cond_4

    if-lez v3, :cond_3

    sub-int/2addr v3, v4

    goto :goto_1

    :cond_3
    add-int/2addr v3, v4

    :cond_4
    :goto_1
    add-int/2addr v1, v3

    .line 808
    invoke-virtual {p0, v2, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->scrollBy(II)V

    return v0

    :cond_5
    return v2
.end method

.method private notifyChange(II)V
    .locals 1

    .line 1942
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnValueChangeListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnValueChangeListener;

    if-eqz p2, :cond_0

    .line 1943
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    invoke-interface {p2, p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnValueChangeListener;->onValueChange(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1

    .line 1797
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1800
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollState:I

    .line 1801
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_1

    .line 1802
    invoke-interface {v0, p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnScrollListener;->onScrollStateChange(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;I)V

    :cond_1
    return-void
.end method

.method private onScrollerFinished(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;)V
    .locals 1

    .line 1783
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    if-ne p1, v0, :cond_1

    .line 1784
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1785
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1787
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1788
    :cond_1
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1789
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 1953
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1954
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 1956
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1958
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$000(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1959
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 2020
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2021
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 2023
    :cond_0
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2025
    :goto_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->access$102(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;I)I

    .line 2026
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;->access$202(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;I)I

    .line 2027
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private pxToDp(F)F
    .locals 1

    .line 2327
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p1, v0

    return p1
.end method

.method private pxToSp(F)F
    .locals 1

    .line 2335
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr p1, v0

    return p1
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 1975
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1976
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1978
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSetSelectionCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1979
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 1966
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1967
    invoke-virtual {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public static resolveSizeAndState(III)I
    .locals 2

    .line 1654
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1655
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_2

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    :cond_1
    if-ge p1, p0, :cond_2

    const/high16 p0, 0x1000000

    or-int/2addr p0, p1

    :cond_2
    :goto_0
    const/high16 p1, -0x1000000

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 1632
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/4 p2, 0x0

    .line 1633
    invoke-static {p1, p3, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->resolveSizeAndState(III)I

    move-result p1

    return p1

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1699
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1703
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_1

    .line 1704
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1706
    :cond_1
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1707
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1709
    :goto_0
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    .line 1710
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    .line 1711
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1713
    invoke-direct {p0, v0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->notifyChange(II)V

    .line 1715
    :cond_2
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1716
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method private setWidthAndHeight()V
    .locals 4

    .line 2169
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/high16 v1, 0x42800000    # 64.0f

    const/high16 v2, 0x43340000    # 180.0f

    const/4 v3, -0x1

    if-eqz v0, :cond_0

    .line 2170
    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinHeight:I

    .line 2171
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxHeight:I

    .line 2172
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    .line 2173
    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxWidth:I

    goto :goto_0

    .line 2175
    :cond_0
    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinHeight:I

    .line 2176
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxHeight:I

    .line 2177
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->dpToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    .line 2178
    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxWidth:I

    :goto_0
    return-void
.end method

.method private spToPx(F)F
    .locals 2

    .line 2331
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method private stringToFormatter(Ljava/lang/String;)Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 2310
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2314
    :cond_0
    new-instance v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$1;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$1;-><init>(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;Ljava/lang/String;)V

    return-object v0
.end method

.method private tryComputeMaxWidth()V
    .locals 5

    .line 1262
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    .line 1265
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMaxTextSize()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1267
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x9

    if-gt v0, v3, :cond_2

    .line 1270
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    cmpl-float v4, v3, v2

    if-lez v4, :cond_1

    move v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1276
    :cond_2
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    :goto_1
    if-lez v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    .line 1279
    div-int/lit8 v0, v0, 0xa

    goto :goto_1

    :cond_3
    int-to-float v0, v1

    mul-float v0, v0, v2

    float-to-int v0, v0

    goto :goto_3

    .line 1283
    :cond_4
    array-length v0, v0

    const/4 v2, 0x0

    :goto_2
    if-ge v1, v0, :cond_6

    .line 1285
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    int-to-float v4, v2

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    float-to-int v2, v3

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    move v0, v2

    .line 1291
    :goto_3
    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 1292
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxWidth:I

    if-eq v1, v0, :cond_8

    .line 1293
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    if-le v0, v1, :cond_7

    .line 1294
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxWidth:I

    goto :goto_4

    .line 1296
    :cond_7
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxWidth:I

    .line 1298
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    :cond_8
    return-void
.end method

.method private updateInputTextView()Z
    .locals 4

    .line 1919
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1920
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1922
    :cond_0
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    .line 1923
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 1924
    array-length v2, v0

    sub-int/2addr v2, v1

    aget-object v0, v0, v2

    goto :goto_0

    .line 1926
    :cond_1
    aget-object v0, v0, v2

    .line 1929
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1930
    iget-object v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1039
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1043
    :cond_0
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    .line 1044
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1045
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    .line 1046
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 1050
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->computeScrollOffset()Z

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 1052
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getCurrX()I

    move-result v1

    .line 1053
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    if-nez v3, :cond_2

    .line 1054
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getStartX()I

    move-result v3

    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    .line 1056
    :cond_2
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v3, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1057
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerX:I

    goto :goto_0

    .line 1059
    :cond_3
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getCurrY()I

    move-result v1

    .line 1060
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    if-nez v3, :cond_4

    .line 1061
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->getStartY()I

    move-result v3

    iput v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1063
    :cond_4
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->scrollBy(II)V

    .line 1064
    iput v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mPreviousScrollerY:I

    .line 1066
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1067
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollerFinished(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;)V

    goto :goto_1

    .line 1069
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postInvalidate()V

    :goto_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 993
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 997
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    goto :goto_3

    .line 1001
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    goto :goto_3

    .line 1015
    :cond_2
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_8

    const/4 p1, -0x1

    .line 1016
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1003
    :cond_3
    iget-boolean v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_5

    if-ne v0, v2, :cond_4

    goto :goto_0

    .line 1004
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_8

    goto :goto_1

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 1005
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->requestFocus()Z

    .line 1006
    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1007
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1008
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_7

    if-ne v0, v2, :cond_6

    const/4 p1, 0x1

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    .line 1009
    :goto_2
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->changeValueByOne(Z)V

    :cond_7
    return v3

    .line 1022
    :cond_8
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 981
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 985
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 988
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1027
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1031
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 1034
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .line 1474
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .line 1438
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getDividerColor()I
    .locals 1

    .line 2347
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerColor:I

    return v0
.end method

.method public getDividerDistance()F
    .locals 1

    .line 2351
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->pxToDp(F)F

    move-result v0

    return v0
.end method

.method public getDividerThickness()F
    .locals 1

    .line 2355
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->pxToDp(F)F

    move-result v0

    return v0
.end method

.method public getFormatter()Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;
    .locals 1

    .line 2371
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    return-object v0
.end method

.method protected getLeftFadingEdgeStrength()F
    .locals 1

    .line 1479
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getMaxValue()I
    .locals 1

    .line 1402
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .line 1367
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    return v0
.end method

.method public getOrder()I
    .locals 1

    .line 2359
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOrder:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 2363
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOrientation:I

    return v0
.end method

.method protected getRightFadingEdgeStrength()F
    .locals 1

    .line 1484
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSelectedTextColor()I
    .locals 1

    .line 2383
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    return v0
.end method

.method public getSelectedTextSize()F
    .locals 1

    .line 2387
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 2391
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 2395
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->spToPx(F)F

    move-result v0

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .line 1469
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x3f666666    # 0.9f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 2399
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1358
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    return v0
.end method

.method public getWheelItemCount()I
    .locals 1

    .line 2367
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .line 1311
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    return v0
.end method

.method public isAscendingOrder()Z
    .locals 1

    .line 2343
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getOrder()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFadingEdgeEnabled()Z
    .locals 1

    .line 2375
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    return v0
.end method

.method public isHorizontalMode()Z
    .locals 1

    .line 2339
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getOrientation()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScrollerEnabled()Z
    .locals 1

    .line 2379
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollerEnabled:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1489
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1490
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1496
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 1499
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1500
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v0, v0

    .line 1501
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getBaseline()I

    move-result v3

    iget-object v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getTop()I

    move-result v4

    add-int/2addr v3, v4

    int-to-float v3, v3

    .line 1502
    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRealWheelItemCount:I

    if-ge v4, v1, :cond_1

    .line 1503
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLeftOfSelectionDividerLeft:I

    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRightOfSelectionDividerRight:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getBottom()I

    move-result v5

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto :goto_0

    .line 1506
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getRight()I

    move-result v0

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getLeft()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 1507
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1508
    iget v4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRealWheelItemCount:I

    if-ge v4, v1, :cond_1

    .line 1509
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getRight()I

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    invoke-virtual {p1, v2, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 1514
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v1

    move v4, v3

    move v3, v0

    const/4 v0, 0x0

    .line 1515
    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_8

    .line 1516
    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    if-ne v0, v5, :cond_2

    .line 1517
    iget-object v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1518
    iget-object v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    .line 1520
    :cond_2
    iget-object v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1521
    iget-object v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 1524
    :goto_2
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v0

    goto :goto_3

    :cond_3
    array-length v5, v1

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, -0x1

    :goto_3
    aget v5, v1, v5

    .line 1525
    iget-object v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1531
    iget v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    if-ne v0, v6, :cond_4

    iget-object v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_6

    .line 1532
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1533
    iget-object v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 1535
    :cond_5
    iget-object v6, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getPaintCenterY(Landroid/graphics/Paint$FontMetrics;)F

    move-result v6

    add-float/2addr v6, v4

    iget-object v7, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v3, v6, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1539
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1540
    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    int-to-float v5, v5

    add-float/2addr v3, v5

    goto :goto_5

    .line 1542
    :cond_7
    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1547
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1550
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    .line 1551
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1553
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLeftOfSelectionDividerLeft:I

    .line 1554
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    add-int/2addr v1, v0

    .line 1555
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v3, v0, v2, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1556
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1559
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRightOfSelectionDividerRight:I

    .line 1560
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    sub-int v1, v0, v1

    .line 1561
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v3, v1, v2, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1562
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    .line 1565
    :cond_9
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 1566
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    add-int/2addr v1, v0

    .line 1567
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1568
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1571
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 1572
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    sub-int v1, v0, v1

    .line 1573
    iget-object v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getRight()I

    move-result v4

    invoke-virtual {v3, v2, v1, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1574
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_a
    :goto_6
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .line 1581
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1582
    const-class v0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1583
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1584
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    mul-int v1, v1, v2

    .line 1585
    iget v3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    sub-int/2addr v3, v0

    mul-int v3, v3, v2

    .line 1586
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1587
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollX(I)V

    .line 1588
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollX(I)V

    goto :goto_0

    .line 1590
    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1591
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 817
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 821
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_1

    return v1

    .line 824
    :cond_1
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 825
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 826
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_7

    .line 827
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventX:F

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownOrMoveEventX:F

    .line 829
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 830
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_2

    .line 831
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 832
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 833
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 834
    :cond_2
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_3

    .line 835
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 836
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 837
    :cond_3
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventX:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLeftOfSelectionDividerLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_4

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRightOfSelectionDividerRight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_4

    .line 839
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_6

    .line 840
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 842
    :cond_4
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventX:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLeftOfSelectionDividerLeft:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 843
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_0

    .line 844
    :cond_5
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRightOfSelectionDividerRight:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_6

    .line 845
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_6
    :goto_0
    return v2

    .line 849
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventY:F

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    .line 851
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 852
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_8

    .line 853
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 854
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 855
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 856
    :cond_8
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_9

    .line 857
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFlingScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    .line 858
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mAdjustScroller:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;

    invoke-virtual {p1, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 859
    :cond_9
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_a

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_a

    .line 861
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_c

    .line 862
    invoke-interface {p1, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_1

    .line 864
    :cond_a
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_b

    .line 865
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    invoke-direct {p0, v1, v3, v4}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 866
    :cond_b
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_c

    .line 867
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    invoke-direct {p0, v2, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    :cond_c
    :goto_1
    return v2
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result p2

    .line 729
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result p3

    .line 732
    iget-object p4, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 733
    iget-object p5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 734
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 735
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 738
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    .line 739
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getX()F

    move-result p2

    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextCenterX:F

    .line 740
    iget-object p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getY()F

    move-result p2

    iget-object p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x2

    int-to-float p3, p3

    add-float/2addr p2, p3

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextCenterY:F

    if-eqz p1, :cond_1

    .line 744
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheel()V

    .line 745
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeFadingEdges()V

    .line 747
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 748
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getWidth()I

    move-result p1

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLeftOfSelectionDividerLeft:I

    .line 749
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLeftOfSelectionDividerLeft:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRightOfSelectionDividerRight:I

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getHeight()I

    move-result p1

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    sub-int/2addr p1, p3

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    .line 752
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mBottomSelectionDividerBottom:I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 760
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 761
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 762
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 764
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 765
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 766
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 878
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 881
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2

    .line 885
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 887
    :cond_2
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 888
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_9

    if-eq v0, v2, :cond_3

    goto/16 :goto_5

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 892
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 893
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 894
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventX:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 895
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 896
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 897
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 900
    :cond_4
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownOrMoveEventX:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 901
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->scrollBy(II)V

    .line 902
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    .line 904
    :cond_5
    :goto_0
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownOrMoveEventX:F

    goto/16 :goto_5

    .line 906
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 907
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_7

    .line 908
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 909
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_8

    .line 910
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeAllCallbacks()V

    .line 911
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 914
    :cond_7
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 915
    invoke-virtual {p0, v1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->scrollBy(II)V

    .line 916
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    .line 918
    :cond_8
    :goto_1
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_5

    .line 923
    :cond_9
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 924
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 925
    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 926
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 927
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 928
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_a

    .line 929
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->fling(I)V

    .line 930
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto/16 :goto_4

    .line 932
    :cond_a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, p1

    .line 933
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventX:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 934
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTouchSlop:I

    if-gt v0, v2, :cond_d

    .line 935
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_b

    .line 937
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_2

    :cond_b
    if-gez p1, :cond_c

    .line 939
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_2

    .line 941
    :cond_c
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_2

    .line 944
    :cond_d
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 946
    :goto_2
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_4

    .line 949
    :cond_e
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 950
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_f

    .line 951
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->fling(I)V

    .line 952
    invoke-direct {p0, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    goto :goto_4

    .line 954
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    int-to-float v0, p1

    .line 955
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 956
    iget v2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTouchSlop:I

    if-gt v0, v2, :cond_12

    .line 957
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    div-int/2addr p1, v0

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    sub-int/2addr p1, v0

    if-lez p1, :cond_10

    .line 959
    invoke-direct {p0, v3}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_3

    :cond_10
    if-gez p1, :cond_11

    .line 961
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->changeValueByOne(Z)V

    goto :goto_3

    .line 963
    :cond_11
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_3

    .line 966
    :cond_12
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 968
    :goto_3
    invoke-direct {p0, v1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->onScrollStateChange(I)V

    .line 971
    :goto_4
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 972
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_5
    return v3
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1081
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isScrollerEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1084
    :cond_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getSelectorIndices()[I

    move-result-object v0

    .line 1086
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isHorizontalMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1088
    iget-boolean p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_1

    if-lez p1, :cond_1

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-gt p2, v1, :cond_1

    .line 1090
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1093
    :cond_1
    iget-boolean p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    if-gez p1, :cond_4

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p2, v1, :cond_4

    .line 1095
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1099
    :cond_2
    iget-boolean p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    if-lez p1, :cond_3

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p2, v1, :cond_3

    .line 1101
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1104
    :cond_3
    iget-boolean p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_4

    if-gez p1, :cond_4

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-gt p2, v1, :cond_4

    .line 1106
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1111
    :cond_4
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1112
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorTextGapWidth:I

    goto :goto_0

    .line 1114
    :cond_5
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1115
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_6

    if-lez p2, :cond_6

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-gt p1, v1, :cond_6

    .line 1117
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1120
    :cond_6
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_9

    if-gez p2, :cond_9

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p1, v1, :cond_9

    .line 1122
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1126
    :cond_7
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_8

    if-lez p2, :cond_8

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-lt p1, v1, :cond_8

    .line 1128
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1131
    :cond_8
    iget-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p1, :cond_9

    if-gez p2, :cond_9

    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p1, v0, p1

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-gt p1, v1, :cond_9

    .line 1133
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1138
    :cond_9
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, p2

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1139
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorTextGapHeight:I

    .line 1142
    :cond_a
    :goto_0
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int v1, p2, v1

    const/4 v2, 0x1

    if-le v1, p1, :cond_c

    .line 1143
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1145
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->decrementSelectorIndices([I)V

    goto :goto_1

    .line 1147
    :cond_b
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->incrementSelectorIndices([I)V

    .line 1149
    :goto_1
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    invoke-direct {p0, p2, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1150
    iget-boolean p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_a

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    if-ge p2, v1, :cond_a

    .line 1151
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1154
    :cond_c
    :goto_2
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    sub-int v1, p2, v1

    neg-int v3, p1

    if-ge v1, v3, :cond_e

    .line 1155
    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorElementSize:I

    add-int/2addr p2, v1

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    .line 1156
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->isAscendingOrder()Z

    move-result p2

    if-eqz p2, :cond_d

    .line 1157
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->incrementSelectorIndices([I)V

    goto :goto_3

    .line 1159
    :cond_d
    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->decrementSelectorIndices([I)V

    .line 1161
    :goto_3
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    invoke-direct {p0, p2, v2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setValueInternal(IZ)V

    .line 1162
    iget-boolean p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_c

    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    aget p2, v0, p2

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    if-le p2, v1, :cond_c

    .line 1163
    iget p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_2

    :cond_e
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1451
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1454
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    .line 1455
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1457
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1460
    :cond_1
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1462
    :goto_0
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1463
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1464
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setDividerColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 2183
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerColor:I

    .line 2184
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setDividerColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 2188
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setDividerColor(I)V

    return-void
.end method

.method public setDividerDistance(I)V
    .locals 0

    int-to-float p1, p1

    .line 2192
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->dpToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividersDistance:I

    return-void
.end method

.method public setDividerThickness(I)V
    .locals 0

    int-to-float p1, p1

    .line 2196
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->dpToPx(F)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectionDividerThickness:I

    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 1075
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1076
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    return-void
.end method

.method public setFadingEdgeEnabled(Z)V
    .locals 0

    .line 2236
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFadingEdgeEnabled:Z

    return-void
.end method

.method public setFormatter(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 2232
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setFormatter(Ljava/lang/String;)V

    return-void
.end method

.method public setFormatter(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;)V
    .locals 1

    .line 1207
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1210
    :cond_0
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mFormatter:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    .line 1211
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1212
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setFormatter(Ljava/lang/String;)V
    .locals 1

    .line 2224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2228
    :cond_0
    invoke-direct {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->stringToFormatter(Ljava/lang/String;)Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setFormatter(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$Formatter;)V

    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    if-ltz p1, :cond_2

    .line 1419
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    .line 1420
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_0

    .line 1421
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    .line 1424
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1425
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1426
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1427
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1428
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1429
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    return-void

    .line 1417
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxValue must be >= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1384
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    .line 1385
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    if-le p1, v0, :cond_0

    .line 1386
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mValue:I

    .line 1388
    :cond_0
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 1389
    :goto_0
    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1390
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1391
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->updateInputTextView()Z

    .line 1392
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->tryComputeMaxWidth()V

    .line 1393
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->invalidate()V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1174
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1349
    iput-wide p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1192
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnScrollListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOnValueChangeListener:Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setOrder(I)V
    .locals 0

    .line 2205
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOrder:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 2209
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mOrientation:I

    .line 2210
    invoke-direct {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setWidthAndHeight()V

    return-void
.end method

.method public setScrollerEnabled(Z)V
    .locals 0

    .line 2240
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mScrollerEnabled:Z

    return-void
.end method

.method public setSelectedTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 2244
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    .line 2245
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextColor:I

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextColor(I)V

    return-void
.end method

.method public setSelectedTextColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 2249
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setSelectedTextColor(I)V

    return-void
.end method

.method public setSelectedTextSize(F)V
    .locals 1

    .line 2253
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    .line 2254
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedTextSize:F

    invoke-direct {p0, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->pxToSp(F)F

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextSize(F)V

    return-void
.end method

.method public setSelectedTextSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 2258
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setSelectedTextSize(F)V

    return-void
.end method

.method public setTextColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 2262
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    .line 2263
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setTextColorResource(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 2267
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTextColor(I)V

    return-void
.end method

.method public setTextSize(F)V
    .locals 1

    .line 2271
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    .line 2272
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTextSize:F

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method public setTextSize(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/DimenRes;
        .end annotation
    .end param

    .line 2276
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTextSize(F)V

    return-void
.end method

.method public setTypeface(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2306
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTypeface(II)V

    return-void
.end method

.method public setTypeface(II)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .line 2302
    invoke-virtual {p0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTypeface(Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 2280
    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    .line 2281
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    if-eqz p1, :cond_0

    .line 2282
    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2283
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mTypeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_0

    .line 2285
    :cond_0
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectedText:Landroid/widget/EditText;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2286
    iget-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_0
    return-void
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2298
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTypeface(Ljava/lang/String;I)V

    return-void
.end method

.method public setTypeface(Ljava/lang/String;I)V
    .locals 1

    .line 2291
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2294
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setTypeface(Landroid/graphics/Typeface;)V

    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1244
    invoke-direct {p0, p1, v0}, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->setValueInternal(IZ)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public setWheelItemCount(I)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    .line 2217
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mRealWheelItemCount:I

    const/4 v0, 0x3

    if-ge p1, v0, :cond_0

    const/4 p1, 0x3

    .line 2218
    :cond_0
    iput p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    .line 2219
    iget p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelItemCount:I

    div-int/lit8 v0, p1, 0x2

    iput v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWheelMiddleItemIndex:I

    .line 2220
    new-array p1, p1, [I

    iput-object p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    return-void

    .line 2215
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wheel item count must be >= 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1332
    iget v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMaxValue:I

    iget v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 1333
    :cond_1
    iget-boolean v0, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1334
    iput-boolean p1, p0, Lcom/alibaba/ailabs/childmode/ui/widget/numberpicker/NumberPicker;->mWrapSelectorWheel:Z

    :cond_2
    return-void
.end method
