.class public Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;
.super Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
.source "DCheckBoxConstructor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$OnChangeListener;,
        Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;,
        Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;
    }
.end annotation


# static fields
.field private static final D_CHECKED:Ljava/lang/String; = "dChecked"

.field private static final D_CHECK_IMG:Ljava/lang/String; = "dCheckImg"

.field private static final D_DISCHECK_IMG:Ljava/lang/String; = "dDisCheckImg"

.field private static final D_DISUNCHECK_IMG:Ljava/lang/String; = "dDisUnCheckImg"

.field private static final D_HEIGHT:Ljava/lang/String; = "dHeight"

.field private static final D_UNCHECK_IMG:Ljava/lang/String; = "dUncheckImg"

.field private static final D_WIDTH:Ljava/lang/String; = "dWidth"

.field private static final VIEW_EVENT_ON_CHANGE:Ljava/lang/String; = "onChange"

.field public static final VIEW_TAG:Ljava/lang/String; = "DCheckBox"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private getDefaultSize(Landroid/content/Context;)I
    .locals 2

    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    const/high16 v1, 0x41880000    # 17.0f

    invoke-static {v0, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method private setEnable(Landroid/view/View;Z)V
    .locals 0

    .line 143
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public initializeView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 296
    invoke-direct {p0, p2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;->getDefaultSize(Landroid/content/Context;)I

    .line 298
    new-instance p1, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {p1, p2, p3}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 299
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->setClickable(Z)V

    return-object p1
.end method

.method public setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/taobao/android/dinamic/model/DinamicParams;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    .line 52
    invoke-super/range {p0 .. p4}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 55
    instance-of v4, v1, Landroid/support/v7/widget/AppCompatCheckBox;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 56
    move-object v4, v1

    check-cast v4, Landroid/support/v7/widget/AppCompatCheckBox;

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    const-string v6, "dWidth"

    .line 59
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "dDisUnCheckImg"

    const-string v9, "dDisCheckImg"

    const-string v10, "dUncheckImg"

    const-string v11, "dCheckImg"

    const-string v12, "dHeight"

    if-nez v7, :cond_1

    .line 60
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 61
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 62
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 63
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 64
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 65
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;->getDefaultSize(Landroid/content/Context;)I

    move-result v7

    .line 66
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;->getDefaultSize(Landroid/content/Context;)I

    move-result v13

    .line 68
    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 69
    invoke-interface {v2, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 70
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v14, v6, v15}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v6

    .line 71
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-static {v14, v12, v15}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result v12

    if-eq v6, v15, :cond_2

    if-eq v12, v15, :cond_2

    move v13, v12

    move v12, v6

    goto :goto_1

    :cond_2
    move v12, v13

    move v13, v7

    .line 78
    :goto_1
    invoke-interface {v2, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 79
    sget v7, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_CHECK_IMG:I

    invoke-virtual {v1, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-nez v6, :cond_3

    const-string v6, "dinamicx_checked"

    :cond_3
    move-object v11, v6

    .line 85
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 86
    sget v10, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_UNCHECK_IMG:I

    invoke-virtual {v1, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    if-nez v6, :cond_4

    const-string v6, "dinamicx_uncheck"

    :cond_4
    move-object v14, v6

    .line 92
    invoke-interface {v2, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    sget v9, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_DIS_CHECK_IMG:I

    invoke-virtual {v1, v9}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    if-nez v6, :cond_5

    const-string v6, "dinamicx_discheck"

    :cond_5
    move-object v15, v6

    .line 99
    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 100
    sget v8, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v1, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v6, :cond_6

    const-string v6, "dinamicx_disunchk"

    :cond_6
    if-nez v7, :cond_7

    if-nez v10, :cond_7

    if-nez v9, :cond_7

    if-nez v8, :cond_7

    .line 107
    invoke-virtual {v4, v5}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    :cond_7
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 111
    invoke-virtual {v14, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 112
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 113
    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 114
    :cond_8
    sget v5, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_CHECK_IMG:I

    invoke-virtual {v1, v5, v11}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 115
    sget v5, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_UNCHECK_IMG:I

    invoke-virtual {v1, v5, v14}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 116
    sget v5, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_DIS_CHECK_IMG:I

    invoke-virtual {v1, v5, v15}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 117
    sget v5, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 118
    new-instance v5, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;

    move-object/from16 v16, v6

    move-object v6, v5

    move-object v7, v4

    move-object v8, v11

    move-object v9, v14

    move-object v10, v15

    move-object/from16 v11, v16

    invoke-direct/range {v6 .. v13}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;-><init>(Landroid/support/v7/widget/AppCompatCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    sget-object v6, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    .line 119
    invoke-virtual {v5, v6, v7}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_9
    const-string v5, "dChecked"

    .line 124
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 125
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 126
    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 127
    invoke-virtual {v0, v4, v5}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;->setChecked(Landroid/support/v7/widget/AppCompatCheckBox;Z)V

    :cond_a
    const-string v4, "dEnabled"

    .line 130
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 131
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 132
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 133
    invoke-static {v2}, Lcom/taobao/android/dinamic/expressionv2/NumberUtil;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 134
    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;->setEnable(Landroid/view/View;Z)V

    goto :goto_2

    :cond_b
    const/4 v2, 0x1

    .line 136
    invoke-direct {v0, v1, v2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;->setEnable(Landroid/view/View;Z)V

    :cond_c
    :goto_2
    return-void
.end method

.method public setChecked(Landroid/support/v7/widget/AppCompatCheckBox;Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 284
    sget v0, Lcom/taobao/android/dinamic/R$id;->change_with_attribute:I

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 285
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 286
    sget p2, Lcom/taobao/android/dinamic/R$id;->change_with_attribute:I

    const-string v0, "false"

    invoke-virtual {p1, p2, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setEvents(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 2

    .line 279
    new-instance v0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;-><init>(Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$1;)V

    invoke-virtual {v0, p1, p2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$DCheckBoxEventHandlerWorker;->bindEventHandler(Landroid/view/View;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    return-void
.end method
