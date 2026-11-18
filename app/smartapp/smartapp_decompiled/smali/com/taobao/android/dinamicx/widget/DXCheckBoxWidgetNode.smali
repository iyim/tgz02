.class public Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;
.super Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.source "DXCheckBoxWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$LoadDrawableTask;,
        Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$Builder;
    }
.end annotation


# static fields
.field public static final ALREADY_INT_CHECK_IMG:I

.field public static final ALREADY_INT_DIS_CHECK_IMG:I

.field public static final ALREADY_INT_DIS_UNCHECK_IMG:I

.field public static final ALREADY_INT_UNCHECK_IMG:I

.field public static final NEED_INT_CHECK_IMG:I

.field public static final NEED_INT_DIS_CHECK_IMG:I

.field public static final NEED_INT_DIS_UNCHECK_IMG:I

.field public static final NEED_INT_UNCHECK_IMG:I


# instance fields
.field private asyncImageLoad:Z

.field private checkImg:Ljava/lang/String;

.field private checked:I

.field private disCheckImg:Ljava/lang/String;

.field private disUnCheckImg:Ljava/lang/String;

.field private isInitCheckState:Z

.field private uncheckImg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    sget v0, Lcom/taobao/android/dinamic/R$id;->already_int_check_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_CHECK_IMG:I

    .line 41
    sget v0, Lcom/taobao/android/dinamic/R$id;->need_int_check_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_CHECK_IMG:I

    .line 43
    sget v0, Lcom/taobao/android/dinamic/R$id;->already_int_uncheck_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_UNCHECK_IMG:I

    .line 45
    sget v0, Lcom/taobao/android/dinamic/R$id;->need_int_uncheck_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_UNCHECK_IMG:I

    .line 47
    sget v0, Lcom/taobao/android/dinamic/R$id;->already_int_dis_check_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_DIS_CHECK_IMG:I

    .line 49
    sget v0, Lcom/taobao/android/dinamic/R$id;->need_int_dis_check_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_DIS_CHECK_IMG:I

    .line 51
    sget v0, Lcom/taobao/android/dinamic/R$id;->already_int_dis_uncheck_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_DIS_UNCHECK_IMG:I

    .line 53
    sget v0, Lcom/taobao/android/dinamic/R$id;->need_int_dis_uncheck_img:I

    sput v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_DIS_UNCHECK_IMG:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    const/4 v0, 0x1

    .line 73
    iput v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->accessibility:I

    return-void
.end method

.method static synthetic access$100(Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;)Z
    .locals 0

    .line 25
    iget-boolean p0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    return p0
.end method

.method private setCheckDrawable(Landroid/support/v7/widget/AppCompatCheckBox;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 202
    iget-object v1, v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checkImg:Ljava/lang/String;

    .line 203
    sget v2, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_CHECK_IMG:I

    invoke-virtual {v10, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "dinamicx_checked"

    .line 209
    :cond_0
    iget-object v3, v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->uncheckImg:Ljava/lang/String;

    .line 210
    sget v4, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_UNCHECK_IMG:I

    invoke-virtual {v10, v4}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "dinamicx_uncheck"

    .line 216
    :cond_1
    iget-object v5, v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disCheckImg:Ljava/lang/String;

    .line 217
    sget v6, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_DIS_CHECK_IMG:I

    invoke-virtual {v10, v6}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-nez v5, :cond_2

    const-string v5, "dinamicx_discheck"

    .line 223
    :cond_2
    iget-object v7, v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disUnCheckImg:Ljava/lang/String;

    .line 224
    sget v8, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v10, v8}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    if-nez v7, :cond_3

    const-string v7, "dinamicx_disunchk"

    .line 230
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->needHandleDark()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dark_"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 232
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 233
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_4
    move-object v11, v1

    move-object v12, v3

    move-object v13, v5

    move-object v14, v7

    if-nez v2, :cond_5

    if-nez v4, :cond_5

    if-nez v6, :cond_5

    if-nez v8, :cond_5

    const/4 v1, 0x0

    .line 239
    invoke-virtual {v10, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 242
    :cond_5
    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 243
    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 244
    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 245
    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 246
    :cond_6
    new-instance v15, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$LoadDrawableTask;

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->getMeasuredWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->getMeasuredHeight()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->needHandleDark()Z

    move-result v9

    move-object v1, v15

    move-object/from16 v2, p1

    move-object v3, v11

    move-object v4, v12

    move-object v5, v13

    move-object v6, v14

    invoke-direct/range {v1 .. v9}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$LoadDrawableTask;-><init>(Landroid/support/v7/widget/AppCompatCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 250
    iget-boolean v1, v0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->asyncImageLoad:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 251
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_CHECK_IMG:I

    invoke-virtual {v10, v1, v11}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 252
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_UNCHECK_IMG:I

    invoke-virtual {v10, v1, v12}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 253
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_DIS_CHECK_IMG:I

    invoke-virtual {v10, v1, v13}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 254
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->NEED_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v10, v1, v14}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 256
    new-array v1, v2, [Ljava/lang/Void;

    invoke-static {v15, v1}, Lcom/taobao/android/dinamicx/thread/DXRunnableManager;->scheduledAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_0

    .line 258
    :cond_7
    invoke-static {v15}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$LoadDrawableTask;->access$000(Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$LoadDrawableTask;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 259
    aget-object v3, v1, v2

    const/4 v2, 0x1

    aget-object v4, v1, v2

    const/4 v2, 0x2

    aget-object v5, v1, v2

    const/4 v2, 0x3

    aget-object v6, v1, v2

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$LoadDrawableTask;->updateInternalStatus(Landroid/support/v7/widget/AppCompatCheckBox;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 260
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_CHECK_IMG:I

    invoke-virtual {v10, v1, v11}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 261
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_UNCHECK_IMG:I

    invoke-virtual {v10, v1, v12}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 262
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_DIS_CHECK_IMG:I

    invoke-virtual {v10, v1, v13}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 263
    sget v1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->ALREADY_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v10, v1, v14}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    :cond_8
    :goto_0
    return-void
.end method


# virtual methods
.method public build(Ljava/lang/Object;)Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 69
    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;

    invoke-direct {p1}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;-><init>()V

    return-object p1
.end method

.method protected extraHandleDark()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getCheckImg()Ljava/lang/String;
    .locals 1

    .line 450
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checkImg:Ljava/lang/String;

    return-object v0
.end method

.method public getChecked()I
    .locals 1

    .line 446
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checked:I

    return v0
.end method

.method public getDefaultValueForIntAttr(J)I
    .locals 3

    const-wide v0, -0x3ccaf041434e871L

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->getDefaultValueForIntAttr(J)I

    move-result p1

    return p1
.end method

.method public getDisCheckImg()Ljava/lang/String;
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disCheckImg:Ljava/lang/String;

    return-object v0
.end method

.method public getDisUnchkImg()Ljava/lang/String;
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disUnCheckImg:Ljava/lang/String;

    return-object v0
.end method

.method public getUncheckImg()Ljava/lang/String;
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->uncheckImg:Ljava/lang/String;

    return-object v0
.end method

.method public isAsyncImageLoad()Z
    .locals 1

    .line 486
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->asyncImageLoad:Z

    return v0
.end method

.method public isInitCheckState()Z
    .locals 1

    .line 494
    iget-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    return v0
.end method

.method protected onBindEvent(Landroid/content/Context;Landroid/view/View;J)V
    .locals 2

    if-eqz p2, :cond_1

    .line 426
    instance-of p1, p2, Landroid/support/v7/widget/AppCompatCheckBox;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x49652a47524c602bL    # 3.775989076956713E45

    cmp-long p1, p3, v0

    if-nez p1, :cond_1

    .line 430
    nop

    nop

    new-instance p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$1;

    invoke-direct {p1, p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode$1;-><init>(Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;)V

    invoke-virtual {p2, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V
    .locals 0

    .line 102
    invoke-super {p0, p1, p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onClone(Lcom/taobao/android/dinamicx/widget/DXWidgetNode;Z)V

    .line 104
    instance-of p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;

    if-nez p2, :cond_0

    return-void

    .line 108
    :cond_0
    nop

    nop

    .line 109
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checked:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checked:I

    .line 110
    iget p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->enabled:I

    iput p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->enabled:I

    .line 111
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checkImg:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checkImg:Ljava/lang/String;

    .line 112
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->uncheckImg:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->uncheckImg:Ljava/lang/String;

    .line 113
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disCheckImg:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disCheckImg:Ljava/lang/String;

    .line 114
    iget-object p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disUnCheckImg:Ljava/lang/String;

    iput-object p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disUnCheckImg:Ljava/lang/String;

    .line 115
    iget-boolean p2, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    iput-boolean p2, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    .line 116
    iget-boolean p1, p1, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->asyncImageLoad:Z

    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->asyncImageLoad:Z

    return-void
.end method

.method protected onCreateView(Landroid/content/Context;)Landroid/view/View;
    .locals 1

    .line 157
    new-instance v0, Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-direct {v0, p1}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 78
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 79
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

    .line 91
    invoke-static {p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    if-eqz v2, :cond_3

    .line 94
    invoke-static {p2}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result v4

    .line 97
    :cond_3
    invoke-virtual {p0, p1, v4}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRenderView(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_3

    .line 163
    instance-of p1, p2, Landroid/support/v7/widget/AppCompatCheckBox;

    if-nez p1, :cond_0

    goto :goto_2

    .line 167
    :cond_0
    nop

    nop

    const/4 p1, 0x1

    .line 168
    invoke-virtual {p2, p1}, Landroid/support/v7/widget/AppCompatCheckBox;->setClickable(Z)V

    .line 170
    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->getMeasuredHeight()I

    move-result v0

    if-lez v0, :cond_1

    .line 171
    invoke-direct {p0, p2}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->setCheckDrawable(Landroid/support/v7/widget/AppCompatCheckBox;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 173
    invoke-virtual {p2, v0}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    :goto_0
    iget v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checked:I

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p2, p1}, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->setChecked(Landroid/support/v7/widget/AppCompatCheckBox;Z)V

    :cond_3
    :goto_2
    return-void
.end method

.method protected onSetIntAttribute(JI)V
    .locals 3

    const-wide v0, 0x41a2dc99fbad6cceL    # 1.5822361383872074E8

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 122
    iput p3, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checked:I

    :cond_0
    const-wide v0, -0x3ccaf041434e871L

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    if-eqz p3, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 125
    :goto_0
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->asyncImageLoad:Z

    goto :goto_1

    .line 127
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetIntAttribute(JI)V

    :goto_1
    return-void
.end method

.method protected onSetStringAttribute(JLjava/lang/String;)V
    .locals 3

    const-wide v0, 0x1842d410591d5023L    # 8.25364143022036E-192

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 143
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checkImg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-wide v0, -0x27f3abdebe2e00f8L    # -1.3952561898146858E116

    cmp-long v2, v0, p1

    if-nez v2, :cond_1

    .line 145
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->uncheckImg:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-wide v0, -0x603443deda7a17baL

    cmp-long v2, v0, p1

    if-nez v2, :cond_2

    .line 147
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disCheckImg:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-wide v0, 0x1b61045c0ac56c61L    # 8.398781914738113E-177

    cmp-long v2, v0, p1

    if-nez v2, :cond_3

    .line 149
    iput-object p3, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disUnCheckImg:Ljava/lang/String;

    goto :goto_0

    .line 151
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode;->onSetStringAttribute(JLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAsyncImageLoad(Z)V
    .locals 0

    .line 490
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->asyncImageLoad:Z

    return-void
.end method

.method public setCheckImg(Ljava/lang/String;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checkImg:Ljava/lang/String;

    return-void
.end method

.method public setChecked(I)V
    .locals 0

    .line 466
    iput p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->checked:I

    return-void
.end method

.method protected setChecked(Landroid/support/v7/widget/AppCompatCheckBox;Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    .line 195
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    const/4 p1, 0x0

    .line 196
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    :cond_0
    return-void
.end method

.method public setDisCheckImg(Ljava/lang/String;)V
    .locals 0

    .line 478
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disCheckImg:Ljava/lang/String;

    return-void
.end method

.method public setDisUnCheckImg(Ljava/lang/String;)V
    .locals 0

    .line 482
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->disUnCheckImg:Ljava/lang/String;

    return-void
.end method

.method public setInitCheckState(Z)V
    .locals 0

    .line 498
    iput-boolean p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->isInitCheckState:Z

    return-void
.end method

.method public setUncheckImg(Ljava/lang/String;)V
    .locals 0

    .line 474
    iput-object p1, p0, Lcom/taobao/android/dinamicx/widget/DXCheckBoxWidgetNode;->uncheckImg:Ljava/lang/String;

    return-void
.end method
