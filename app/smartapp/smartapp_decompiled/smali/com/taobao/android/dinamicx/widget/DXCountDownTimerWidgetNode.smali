.class public Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXCountDownTimerWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000


# instance fields
.field private colonText:Ljava/lang/String;

.field private colonTextColor:I

.field private colonTextMarginBottom:I

.field private colonTextMarginLeft:I

.field private colonTextMarginRight:I

.field private colonTextMarginTop:I

.field private colonTextSize:D

.field private currentTime:J

.field private futureTime:J

.field private milliSecondDigitCount:I

.field private milliSecondTextSelfAdaption:Z

.field private seeMoreSize:D

.field private seeMoreText:Ljava/lang/String;

.field private seeMoreTextColor:I

.field private seeMoreTextMarginBottom:I

.field private seeMoreTextMarginLeft:I

.field private seeMoreTextMarginRight:I

.field private seeMoreTextMarginTop:I

.field private showMilliSecond:Z

.field private showSeeMoreText:Z

.field private timerBackgroundColor:I

.field private timerCornerRadius:I

.field private timerTextColor:I

.field private timerTextHeight:I

.field private timerTextMarginBottom:I

.field private timerTextMarginLeft:I

.field private timerTextMarginRight:I

.field private timerTextMarginTop:I

.field private timerTextSize:D

.field private timerTextWidth:I

.field private useRemoteTime:Z


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 137
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const-string v0, ":"

    .line 58
    iput-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonText:Ljava/lang/String;

    const/high16 v0, -0x1000000

    .line 60
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextColor:I

    .line 72
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextColor:I

    const-wide/high16 v1, 0x4028000000000000L    # 12.0

    .line 82
    iput-wide v1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    .line 84
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerBackgroundColor:I

    const/4 v0, -0x1

    .line 88
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextColor:I

    const/4 v0, 0x0

    .line 90
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextHeight:I

    .line 92
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextWidth:I

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    .line 106
    iput-wide v3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    .line 108
    iput-wide v1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    const/4 v1, 0x1

    .line 110
    iput-boolean v1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showSeeMoreText:Z

    .line 113
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    .line 116
    iput v1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    .line 118
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    .line 120
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->useRemoteTime:Z

    .line 138
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    .line 140
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-double v2, v0

    iput-wide v2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    .line 141
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result v0

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    :cond_0
    return-void
.end method

.method private setColonTextViewStyle(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;IIIIDILjava/lang/String;)V
    .locals 16

    move-object/from16 v0, p9

    .line 332
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getColonFirst()Landroid/widget/TextView;

    move-result-object v12

    .line 333
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getColonSecond()Landroid/widget/TextView;

    move-result-object v13

    .line 334
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getColonThird()Landroid/widget/TextView;

    move-result-object v14

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    .line 336
    invoke-direct/range {v1 .. v11}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    move-object v2, v13

    .line 338
    invoke-direct/range {v1 .. v11}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    move-object/from16 v15, p0

    .line 341
    iget-boolean v1, v15, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 342
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v14

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-wide/from16 v9, p6

    move/from16 v11, p8

    .line 343
    invoke-direct/range {v1 .. v11}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 346
    invoke-virtual {v14, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    :goto_0
    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 350
    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setFutureTime(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;JJ)V
    .locals 1

    .line 254
    invoke-virtual {p1, p2, p3}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->setFutureTime(J)V

    .line 255
    invoke-virtual {p1, p4, p5}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->setCurrentTime(J)V

    .line 257
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getLastTime()J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    .line 258
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->showCountDown()V

    .line 259
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->updateCountView()V

    .line 260
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getTimer()Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/taobao/android/dinamic/view/HandlerTimer;->start()V

    .line 261
    new-instance p2, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$1;

    invoke-direct {p2, p0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;)V

    invoke-virtual {p1, p2}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->setOnFinishListener(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView$OnFinishListener;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->hideCountDown()V

    .line 271
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getTimer()Lcom/taobao/android/dinamic/view/HandlerTimer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/taobao/android/dinamic/view/HandlerTimer;->stop()V

    .line 274
    new-instance p1, Lcom/taobao/android/dinamicx/expression/event/DXEvent;

    const-wide p2, -0x5e2e029062192910L    # -9.004360906086141E-146

    invoke-direct {p1, p2, p3}, Lcom/taobao/android/dinamicx/expression/event/DXEvent;-><init>(J)V

    .line 275
    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->postEvent(Lcom/taobao/android/dinamicx/expression/event/DXEvent;)Z

    :goto_0
    return-void
.end method

.method private setSeeMoreTextViewStyle(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;Ljava/lang/String;IIIIDI)V
    .locals 11

    .line 284
    invoke-virtual {p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getSeeMoreView()Landroid/widget/TextView;

    move-result-object v1

    move-object v0, p2

    .line 285
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    .line 287
    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    return-void
.end method

.method private setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V
    .locals 0

    double-to-float p8, p8

    const/4 p9, 0x0

    .line 357
    invoke-virtual {p1, p9, p8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 358
    invoke-virtual {p1, p10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 361
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p8

    check-cast p8, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p6, :cond_0

    .line 363
    iput p6, p8, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    :cond_0
    if-eqz p7, :cond_1

    .line 367
    iput p7, p8, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 370
    :cond_1
    invoke-virtual {p8, p2, p3, p4, p5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 372
    invoke-virtual {p1, p8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setTimerTextBackground(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V
    .locals 1

    .line 377
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    int-to-float p6, p6

    .line 378
    invoke-virtual {v0, p6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 379
    invoke-virtual {v0, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 380
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 382
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 383
    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    if-eqz p1, :cond_1

    .line 384
    iget p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    if-eqz p1, :cond_0

    .line 385
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 386
    invoke-virtual {p1, p6}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 387
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 388
    invoke-virtual {p4, p1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 390
    :cond_0
    invoke-virtual {p4, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setTimerTextViewStyle(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;IIIIIIDIII)V
    .locals 16

    move-object/from16 v11, p0

    .line 297
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getHour()Landroid/widget/TextView;

    move-result-object v12

    .line 298
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getMinute()Landroid/widget/TextView;

    move-result-object v13

    .line 299
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getSecond()Landroid/widget/TextView;

    move-result-object v14

    .line 300
    invoke-virtual/range {p1 .. p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->getMilli()Landroid/widget/TextView;

    move-result-object v15

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    .line 302
    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    move-object v1, v13

    .line 305
    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    move-object v1, v14

    .line 308
    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    .line 311
    iget-boolean v0, v11, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 312
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    iget v0, v11, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v0, v11, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    if-eqz v0, :cond_0

    if-lez p6, :cond_0

    .line 316
    div-int/lit8 v0, p6, 0x2

    move v6, v0

    goto :goto_0

    :cond_0
    move/from16 v6, p6

    :goto_0
    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v7, p7

    move-wide/from16 v8, p8

    move/from16 v10, p10

    .line 319
    invoke-direct/range {v0 .. v10}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTextViewStyle(Landroid/widget/TextView;IIIIIIDI)V

    goto :goto_1

    :cond_1
    const/16 v0, 0x8

    .line 322
    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    move-object/from16 p1, p0

    move-object/from16 p2, v12

    move-object/from16 p3, v13

    move-object/from16 p4, v14

    move-object/from16 p5, v15

    move/from16 p6, p11

    move/from16 p7, p12

    .line 325
    invoke-direct/range {p1 .. p7}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTimerTextBackground(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;II)V

    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 134
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;-><init>()V

    return-object p1
.end method

.method public getColonText()Ljava/lang/String;
    .locals 1

    .line 497
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonText:Ljava/lang/String;

    return-object v0
.end method

.method public getColonTextColor()I
    .locals 1

    .line 501
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextColor:I

    return v0
.end method

.method public getColonTextMarginBottom()I
    .locals 1

    .line 505
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginBottom:I

    return v0
.end method

.method public getColonTextMarginLeft()I
    .locals 1

    .line 509
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginLeft:I

    return v0
.end method

.method public getColonTextMarginRight()I
    .locals 1

    .line 513
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginRight:I

    return v0
.end method

.method public getColonTextMarginTop()I
    .locals 1

    .line 517
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginTop:I

    return v0
.end method

.method public getColonTextSize()D
    .locals 2

    .line 593
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    return-wide v0
.end method

.method public getCurrentTime()J
    .locals 2

    .line 585
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->currentTime:J

    return-wide v0
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 4

    const/high16 v0, -0x1000000

    const-wide v1, 0xb9bdea47f51e384L

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    return v0

    :cond_0
    const-wide v1, -0x690ac83874a1cc33L    # -4.435116434408583E-198

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    return v0

    :cond_1
    const-wide v0, 0x31c63723810713d3L    # 6.437612853910449E-69

    cmp-long v2, p1, v0

    if-nez v2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    const-wide v0, -0x6f8ac14d7ff01dbL

    const/4 v2, 0x1

    cmp-long v3, p1, v0

    if-nez v3, :cond_3

    return v2

    :cond_3
    const-wide v0, -0x664c02220e91737eL    # -7.351427833084523E-185

    cmp-long v3, p1, v0

    if-nez v3, :cond_4

    return v2

    :cond_4
    const-wide v0, -0x770060c4e81ead13L

    cmp-long v2, p1, v0

    if-nez v2, :cond_5

    const/4 p1, 0x0

    return p1

    .line 426
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getFutureTime()J
    .locals 2

    .line 589
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->futureTime:J

    return-wide v0
.end method

.method public getMilliSecondDigitCount()I
    .locals 1

    .line 609
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    return v0
.end method

.method public getSeeMoreText()Ljava/lang/String;
    .locals 1

    .line 521
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreText:Ljava/lang/String;

    return-object v0
.end method

.method public getSeeMoreTextColor()I
    .locals 1

    .line 525
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextColor:I

    return v0
.end method

.method public getSeeMoreTextMarginBottom()I
    .locals 1

    .line 529
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginBottom:I

    return v0
.end method

.method public getSeeMoreTextMarginLeft()I
    .locals 1

    .line 533
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginLeft:I

    return v0
.end method

.method public getSeeMoreTextMarginRight()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginRight:I

    return v0
.end method

.method public getSeeMoreTextMarginTop()I
    .locals 1

    .line 541
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginTop:I

    return v0
.end method

.method public getSeeMoreTextSize()D
    .locals 2

    .line 545
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    return-wide v0
.end method

.method public getTimerBackgroundColor()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerBackgroundColor:I

    return v0
.end method

.method public getTimerCornerRadius()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerCornerRadius:I

    return v0
.end method

.method public getTimerTextColor()I
    .locals 1

    .line 557
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextColor:I

    return v0
.end method

.method public getTimerTextHeight()I
    .locals 1

    .line 561
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextHeight:I

    return v0
.end method

.method public getTimerTextMarginBottom()I
    .locals 1

    .line 569
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginBottom:I

    return v0
.end method

.method public getTimerTextMarginLeft()I
    .locals 1

    .line 573
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginLeft:I

    return v0
.end method

.method public getTimerTextMarginRight()I
    .locals 1

    .line 577
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginRight:I

    return v0
.end method

.method public getTimerTextMarginTop()I
    .locals 1

    .line 581
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginTop:I

    return v0
.end method

.method public getTimerTextSize()D
    .locals 2

    .line 597
    iget-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    return-wide v0
.end method

.method public getTimerTextWidth()I
    .locals 1

    .line 565
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextWidth:I

    return v0
.end method

.method public isMilliSecondTextSelfAdaption()Z
    .locals 1

    .line 613
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    return v0
.end method

.method public isShowMilliSecond()Z
    .locals 1

    .line 605
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    return v0
.end method

.method public isShowSeeMoreText()Z
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showSeeMoreText:Z

    return v0
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 2

    .line 147
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 149
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 153
    :cond_0
    nop

    nop

    .line 154
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->currentTime:J

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->currentTime:J

    .line 155
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->futureTime:J

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->futureTime:J

    .line 157
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextColor:I

    .line 158
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonText:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonText:Ljava/lang/String;

    .line 159
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginBottom:I

    .line 160
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginLeft:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginLeft:I

    .line 161
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginRight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginRight:I

    .line 162
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginTop:I

    .line 163
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    .line 165
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreText:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreText:Ljava/lang/String;

    .line 166
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    .line 167
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextColor:I

    .line 168
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginLeft:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginLeft:I

    .line 169
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginTop:I

    .line 170
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginRight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginRight:I

    .line 171
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginBottom:I

    .line 173
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerBackgroundColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerBackgroundColor:I

    .line 174
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerCornerRadius:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerCornerRadius:I

    .line 175
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextColor:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextColor:I

    .line 176
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextHeight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextHeight:I

    .line 177
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextWidth:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextWidth:I

    .line 178
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginBottom:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginBottom:I

    .line 179
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginLeft:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginLeft:I

    .line 180
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginTop:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginTop:I

    .line 181
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginRight:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginRight:I

    .line 182
    iget-wide v0, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    iput-wide v0, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    .line 184
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showSeeMoreText:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showSeeMoreText:Z

    .line 185
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    .line 186
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    .line 187
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    .line 188
    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->useRemoteTime:Z

    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->useRemoteTime:Z

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 398
    new-instance v0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    invoke-direct {v0, p1}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 193
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 194
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v1

    const/4 v2, 0x1

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ne v1, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 206
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 209
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v4

    .line 212
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 17

    move-object/from16 v13, p0

    move-object/from16 v0, p2

    if-eqz v0, :cond_2

    .line 217
    instance-of v1, v0, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 221
    :cond_0
    move-object v14, v0

    nop

    nop

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->getDXRuntimeContext()Lcom/taobao/android/dinamicx/DXRuntimeContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXRuntimeContext;->getEngineContext()Lcom/taobao/android/dinamicx/DXEngineContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taobao/android/dinamicx/DXEngineContext;->fetchRemoteTimeSync()J

    move-result-wide v0

    .line 224
    iget-boolean v2, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->useRemoteTime:Z

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 225
    iput-wide v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->currentTime:J

    .line 229
    :cond_1
    iget-boolean v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    invoke-virtual {v14, v0}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->setShowMilliSecond(Z)V

    .line 230
    iget v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    invoke-virtual {v14, v0}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->setMilliSecondDigitCount(I)V

    .line 233
    iget v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextColor:I

    const/4 v1, 0x0

    const-string v2, "colonTextColor"

    invoke-virtual {v13, v2, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v15

    .line 234
    iget v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextColor:I

    const-string/jumbo v2, "seeMoreTextColor"

    invoke-virtual {v13, v2, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v16

    const/4 v0, 0x1

    .line 235
    iget v2, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerBackgroundColor:I

    const-string/jumbo v3, "timerBackgroundColor"

    invoke-virtual {v13, v3, v0, v2}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v11

    .line 236
    iget v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextColor:I

    const-string/jumbo v2, "timerTextColor"

    invoke-virtual {v13, v2, v1, v0}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->tryFetchDarkModeColor(Ljava/lang/String;II)I

    move-result v10

    .line 238
    iget v2, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginLeft:I

    iget v3, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginTop:I

    iget v4, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginRight:I

    iget v5, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginBottom:I

    iget v6, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextWidth:I

    iget v7, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextHeight:I

    iget-wide v8, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    iget v12, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerCornerRadius:I

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct/range {v0 .. v12}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setTimerTextViewStyle(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;IIIIIIDIII)V

    .line 241
    iget v2, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginLeft:I

    iget v3, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginTop:I

    iget v4, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginRight:I

    iget v5, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginBottom:I

    iget-wide v6, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    iget-object v9, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonText:Ljava/lang/String;

    move v8, v15

    invoke-direct/range {v0 .. v9}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setColonTextViewStyle(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;IIIIDILjava/lang/String;)V

    .line 244
    iget-object v2, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreText:Ljava/lang/String;

    iget v3, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginLeft:I

    iget v4, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginTop:I

    iget v5, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginRight:I

    iget v6, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginBottom:I

    iget-wide v7, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setSeeMoreTextViewStyle(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;Ljava/lang/String;IIIIDI)V

    .line 247
    iget-boolean v0, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showSeeMoreText:Z

    invoke-virtual {v14, v0}, Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;->setShowSeeMoreText(Z)V

    .line 249
    iget-wide v2, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->futureTime:J

    iget-wide v4, v13, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->currentTime:J

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->setFutureTime(Lcom/taobao/android/dinamicx/view/DXNativeCountDownTimerView;JJ)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onSetIntAttribute(JI)V
    .locals 5

    const-wide v0, -0x690ac83874a1cc33L    # -4.435116434408583E-198

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 432
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextColor:I

    goto/16 :goto_4

    :cond_0
    const-wide v0, -0x4b95bd963df7f558L    # -3.346694362462151E-56

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 434
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginBottom:I

    goto/16 :goto_4

    :cond_1
    const-wide v0, -0x209cc3fdc52c2744L    # -3.148086692375122E151

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    .line 436
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginLeft:I

    goto/16 :goto_4

    :cond_2
    const-wide v0, -0x38dd49fbd3443cd0L    # -4.857653637923643E34

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 438
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginRight:I

    goto/16 :goto_4

    :cond_3
    const-wide v0, 0x294779a9425e9863L    # 7.809111300513874E-110

    cmp-long v2, v0, p1

    if-nez v2, :cond_4

    .line 440
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextMarginTop:I

    goto/16 :goto_4

    :cond_4
    const-wide v0, 0xb9bdea47f51e384L

    cmp-long v2, v0, p1

    if-nez v2, :cond_5

    .line 442
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextColor:I

    goto/16 :goto_4

    :cond_5
    const-wide v0, -0x58aa6d7fa256f6a1L    # -3.341624122537815E-119

    cmp-long v2, v0, p1

    if-nez v2, :cond_6

    .line 444
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginBottom:I

    goto/16 :goto_4

    :cond_6
    const-wide v0, -0xdc264b38fb19a8dL

    cmp-long v2, v0, p1

    if-nez v2, :cond_7

    .line 446
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginLeft:I

    goto/16 :goto_4

    :cond_7
    const-wide v0, 0x5f75d8de0b2c08e7L    # 7.151421672184511E151

    cmp-long v2, v0, p1

    if-nez v2, :cond_8

    .line 448
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginRight:I

    goto/16 :goto_4

    :cond_8
    const-wide v0, -0x1b81ee7f798d93e6L    # -1.189891420460628E176

    cmp-long v2, v0, p1

    if-nez v2, :cond_9

    .line 450
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreTextMarginTop:I

    goto/16 :goto_4

    :cond_9
    const-wide v0, -0x1caf3828e14e8dccL    # -2.533178112634746E170

    cmp-long v2, v0, p1

    if-nez v2, :cond_a

    .line 452
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerBackgroundColor:I

    goto/16 :goto_4

    :cond_a
    const-wide v0, -0x68aa436ebd6158fdL

    cmp-long v2, v0, p1

    if-nez v2, :cond_b

    .line 454
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerCornerRadius:I

    goto/16 :goto_4

    :cond_b
    const-wide v0, 0x31c63723810713d3L    # 6.437612853910449E-69

    cmp-long v2, v0, p1

    if-nez v2, :cond_c

    .line 456
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextColor:I

    goto/16 :goto_4

    :cond_c
    const-wide v0, -0x481ada383134fbd2L    # -1.9420985087145778E-39

    cmp-long v2, v0, p1

    if-nez v2, :cond_d

    .line 458
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextHeight:I

    goto/16 :goto_4

    :cond_d
    const-wide v0, 0x31cb49cf582586d4L    # 7.907656613886309E-69

    cmp-long v2, v0, p1

    if-nez v2, :cond_e

    .line 460
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextWidth:I

    goto/16 :goto_4

    :cond_e
    const-wide v0, 0x3916dd7e668d94aeL    # 1.1009198141510025E-33

    cmp-long v2, v0, p1

    if-nez v2, :cond_f

    .line 462
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginBottom:I

    goto/16 :goto_4

    :cond_f
    const-wide v0, 0x450d970689c756c2L    # 4.4715058395251624E24

    cmp-long v2, v0, p1

    if-nez v2, :cond_10

    .line 464
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginLeft:I

    goto/16 :goto_4

    :cond_10
    const-wide v0, -0x4b6c44a270a2b8caL    # -2.0118223671363974E-55

    cmp-long v2, v0, p1

    if-nez v2, :cond_11

    .line 466
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginRight:I

    goto/16 :goto_4

    :cond_11
    const-wide v0, -0x308ca953ca3def97L    # -5.466925950211974E74

    cmp-long v2, v0, p1

    if-nez v2, :cond_12

    .line 468
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextMarginTop:I

    goto/16 :goto_4

    :cond_12
    const-wide v0, -0x491e3a751e328be1L    # -2.490338644454602E-44

    cmp-long v2, v0, p1

    if-nez v2, :cond_13

    int-to-double p1, p3

    .line 470
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreSize:D

    goto/16 :goto_4

    :cond_13
    const-wide v0, 0x7d56e21dc55bbd68L    # 5.845932317455945E295

    cmp-long v2, v0, p1

    if-nez v2, :cond_14

    int-to-double p1, p3

    .line 472
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonTextSize:D

    goto :goto_4

    :cond_14
    const-wide v0, 0x4699724940e9d76eL    # 1.2902873037479317E32

    cmp-long v2, v0, p1

    if-nez v2, :cond_15

    int-to-double p1, p3

    .line 474
    iput-wide p1, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->timerTextSize:D

    goto :goto_4

    :cond_15
    const-wide v0, -0x6f8ac14d7ff01dbL

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmp-long v4, v0, p1

    if-nez v4, :cond_17

    if-eqz p3, :cond_16

    goto :goto_0

    :cond_16
    const/4 v2, 0x0

    .line 476
    :goto_0
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showSeeMoreText:Z

    goto :goto_4

    :cond_17
    const-wide v0, -0x20c4df3bf80790ddL    # -5.5500319748590386E150

    cmp-long v4, v0, p1

    if-nez v4, :cond_19

    if-eqz p3, :cond_18

    goto :goto_1

    :cond_18
    const/4 v2, 0x0

    .line 478
    :goto_1
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->showMilliSecond:Z

    goto :goto_4

    :cond_19
    const-wide v0, -0x664c02220e91737eL    # -7.351427833084523E-185

    cmp-long v4, v0, p1

    if-nez v4, :cond_1a

    .line 480
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondDigitCount:I

    goto :goto_4

    :cond_1a
    const-wide v0, -0x770060c4e81ead13L

    cmp-long v4, v0, p1

    if-nez v4, :cond_1c

    if-eqz p3, :cond_1b

    goto :goto_2

    :cond_1b
    const/4 v2, 0x0

    .line 482
    :goto_2
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->milliSecondTextSelfAdaption:Z

    goto :goto_4

    :cond_1c
    const-wide v0, -0xe883350010da0abL    # -3.874409492289031E238

    cmp-long v4, v0, p1

    if-nez v4, :cond_1e

    if-eqz p3, :cond_1d

    goto :goto_3

    :cond_1d
    const/4 v2, 0x0

    .line 484
    :goto_3
    iput-boolean v2, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->useRemoteTime:Z

    :cond_1e
    :goto_4
    return-void
.end method

.method protected onSetLongAttribute(JJ)V
    .locals 3

    const-wide v0, 0x71bc862db3229d9dL    # 7.429661823587241E239

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 490
    iput-wide p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->currentTime:J

    goto :goto_0

    :cond_0
    const-wide v0, 0x79a747898ff46934L

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 492
    iput-wide p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->futureTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x6868078f811eb0c9L    # 8.77066555587128E194

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 404
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->colonText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-wide v0, 0x3a22ade48a7b7180L

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 406
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXCountDownTimerWidgetNode;->seeMoreText:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method
