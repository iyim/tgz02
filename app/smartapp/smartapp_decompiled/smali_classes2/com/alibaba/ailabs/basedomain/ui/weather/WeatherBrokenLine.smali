.class public Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;
.super Landroid/support/v7/widget/AppCompatImageView;
.source "WeatherBrokenLine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;,
        Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WeatherBrokenLine"


# instance fields
.field private begin_point_margin_left:F

.field private day_name_text_size:F

.field private day_text_color:I

.field private day_text_size:F

.field private degree_text_size:F

.field private end_point_margin_left:F

.field private line_width:F

.field private mPaint:Landroid/graphics/Paint;

.field private mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

.field private max_temperature_margin_top:F

.field private min_point_day_name_margin:F

.field private min_temperature_margin_top:F

.field private point_radius:F

.field private temperature_text_size:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    sget-object v0, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_begin_point_margin_left:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->begin_point_margin_left:F

    .line 54
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_end_point_margin_left:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->end_point_margin_left:F

    .line 55
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_max_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->max_temperature_margin_top:F

    .line 56
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_min_margin_top:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->min_temperature_margin_top:F

    .line 57
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_temperature_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->temperature_text_size:F

    .line 58
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_degree_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->degree_text_size:F

    .line 62
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_point_radius:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->point_radius:F

    .line 63
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_line_width:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->line_width:F

    .line 64
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_min_point_day_name_margin:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->min_point_day_name_margin:F

    .line 66
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_day_name_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->day_name_text_size:F

    .line 67
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_day_text_size:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    iput p2, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->day_text_size:F

    .line 68
    sget p2, Lcom/alibaba/ailabs/basedomain/R$styleable;->four_days_broken_line_day_text_color:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->day_text_color:I

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Args:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WeatherBrokenLine"

    invoke-static {p2, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 77
    invoke-super/range {p0 .. p1}, Landroid/support/v7/widget/AppCompatImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 78
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    .line 83
    :cond_0
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x1

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw mTemperatureList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v9, "WeatherBrokenLine"

    invoke-static {v9, v1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 86
    :goto_0
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 87
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v2

    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "temperature.x: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " temperature.yHigh:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " point_radius:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->point_radius:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget v3, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget v4, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    iget v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->point_radius:F

    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 93
    iget v3, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget v2, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    iget v4, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->point_radius:F

    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->line_width:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v1, 0x0

    .line 97
    :goto_1
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->size()I

    move-result v2

    sub-int/2addr v2, v8

    if-ge v1, v2, :cond_2

    .line 99
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2, v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v11

    .line 100
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v2, v12}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v13

    .line 101
    iget v2, v11, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget v3, v11, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    iget v4, v13, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget v5, v13, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 102
    iget v2, v11, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget v3, v11, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    iget v4, v13, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget v5, v13, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v1, v12

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 107
    :goto_2
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->size()I

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    const/4 v4, 0x2

    const/high16 v5, 0x40000000    # 2.0f

    if-ge v1, v2, :cond_3

    .line 109
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->temperature_text_size:F

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 110
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 111
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v6, v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v6

    .line 112
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->high:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 113
    iget-object v12, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v12, v8, v10, v13, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 114
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "font1 text:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " height:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v14

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " width:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 114
    invoke-static {v9, v12}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget v12, v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    div-float/2addr v15, v5

    sub-float/2addr v12, v15

    iget v15, v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    .line 117
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v15, v5

    .line 118
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v15, v5

    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    .line 116
    invoke-virtual {v7, v8, v12, v15, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 122
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 123
    iget-object v8, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v12, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->degree_text_size:F

    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 124
    iget-object v8, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    const-string v12, "\u00b0C"

    invoke-virtual {v8, v12, v10, v4, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 125
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "font2 text:"

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v15

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget v8, v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    .line 127
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v2, v15

    add-float/2addr v8, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v15

    add-float/2addr v8, v2

    .line 128
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v8, v2

    iget v2, v6, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yHigh:F

    .line 129
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v6

    const/high16 v15, 0x41100000    # 9.0f

    invoke-static {v6, v15}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/2addr v5, v4

    int-to-float v5, v5

    sub-float/2addr v2, v5

    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    .line 126
    invoke-virtual {v7, v12, v8, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 132
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->temperature_text_size:F

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 134
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v5, v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v5

    .line 135
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->low:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 136
    iget-object v8, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v8, v6, v10, v11, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 137
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "font3 text:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 137
    invoke-static {v9, v8}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget v8, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    const/high16 v15, 0x40000000    # 2.0f

    div-float/2addr v11, v15

    sub-float/2addr v8, v11

    iget v11, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    .line 140
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v15

    const/high16 v3, 0x41900000    # 18.0f

    invoke-static {v15, v3}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v11, v3

    iget-object v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    .line 139
    invoke-virtual {v7, v6, v8, v11, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 144
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 145
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v8, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->degree_text_size:F

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 146
    iget-object v6, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v12, v10, v4, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "font4 text:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget v4, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    .line 149
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v2, v6

    add-float/2addr v4, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    add-float/2addr v4, v2

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v6, 0x40a00000    # 5.0f

    invoke-static {v2, v6}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v4, v2

    iget v2, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->yLow:F

    .line 152
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x41d80000    # 27.0f

    invoke-static {v5, v6}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iget-object v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    .line 148
    invoke-virtual {v7, v12, v4, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    .line 156
    :cond_3
    iget v1, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->min_temperature_margin_top:F

    iget v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->point_radius:F

    add-float/2addr v1, v2

    iget v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->min_point_day_name_margin:F

    add-float/2addr v1, v2

    .line 157
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->day_name_text_size:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 158
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 159
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 160
    iget-object v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    const-string v5, "\u660e\u5929"

    invoke-virtual {v3, v5, v10, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    add-float/2addr v1, v3

    const/4 v3, 0x0

    .line 162
    :goto_3
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v5}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->size()I

    move-result v5

    const-string v6, "dayName:"

    if-ge v3, v5, :cond_4

    .line 163
    iget-object v5, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v5, v3}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v5

    .line 164
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->dayName:Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v6, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->dayName:Ljava/lang/String;

    iget v5, v5, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget-object v8, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v5, v1, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 169
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 170
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->day_text_size:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 172
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->day_text_color:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 173
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 174
    iget-object v3, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    const-string v5, "04"

    invoke-virtual {v3, v5, v10, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 175
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 176
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v3, v4}, Lcom/alibaba/ailabs/genie/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 177
    :goto_4
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->size()I

    move-result v2

    if-ge v10, v2, :cond_5

    .line 178
    iget-object v2, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v2, v10}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->get(I)Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;

    move-result-object v2

    .line 179
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->day:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v3, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->day:Ljava/lang/String;

    iget v2, v2, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$Temperature;->x:F

    iget-object v4, v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void
.end method

.method public setData(Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)V
    .locals 7

    .line 185
    new-instance v0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-direct {v0, p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;-><init>(Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;Lcom/alibaba/ailabs/basedomain/model/weather/WeatherData;)V

    iput-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    .line 186
    iget p1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->min_temperature_margin_top:F

    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->max_temperature_margin_top:F

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->getMax()I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 188
    iget v0, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->end_point_margin_left:F

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->begin_point_margin_left:F

    sub-float/2addr v0, v1

    const v1, 0x40466666    # 3.1f

    div-float v5, v0, v1

    .line 189
    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    iget v3, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->max_temperature_margin_top:F

    invoke-virtual {v1}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->getMax()I

    move-result v4

    iget v6, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->begin_point_margin_left:F

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;->fillPositions(FFIFF)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "yDistancePerDegree : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WeatherBrokenLine"

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Filled mTemperatureList:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->mTemperatureList:Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine$TemperatureList;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/common/APPLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->invalidate()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WeatherBrokenLine{\nbegin_point_margin_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->begin_point_margin_left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, end_point_margin_left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->end_point_margin_left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, max_temperature_margin_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->max_temperature_margin_top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, min_temperature_margin_top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->min_temperature_margin_top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, temperature_text_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->temperature_text_size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, degree_text_size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->degree_text_size:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, point_radius="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->point_radius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n, line_width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/alibaba/ailabs/basedomain/ui/weather/WeatherBrokenLine;->line_width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
