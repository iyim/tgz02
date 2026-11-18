.class public Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;
.super Ljava/lang/Object;
.source "DXScreenTool.java"


# static fields
.field public static final DEFAULT_HEIGHT_SPEC:I

.field public static DEFAULT_WIDTH_SPEC:I = 0x0

.field private static DENSITY:F = 0.0f

.field private static final SUFFIX_AP:Ljava/lang/String; = "ap"

.field private static final SUFFIX_NP:Ljava/lang/String; = "np"

.field private static final WIDTH_REFER:I = 0x177

.field private static WIDTH_SCREEN:I

.field private static cacheMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static globalOrientation:I

.field private static hasSetGlobalOrientation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const v0, 0x7fffff

    const/4 v1, 0x0

    .line 36
    invoke-static {v0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DEFAULT_HEIGHT_SPEC:I

    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 41
    sput v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DENSITY:F

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->cacheMap:Ljava/util/Map;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static _setGlobalOrientation(I)V
    .locals 1

    .line 212
    sget-boolean v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->hasSetGlobalOrientation:Z

    if-eqz v0, :cond_0

    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 215
    :cond_0
    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->globalOrientation:I

    const/4 p0, 0x1

    .line 216
    sput-boolean p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->hasSetGlobalOrientation:Z

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static ap2px(Landroid/content/Context;F)I
    .locals 1

    const v0, 0x43bb8000    # 375.0f

    div-float/2addr p1, v0

    .line 91
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    mul-float p0, p0, p1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 86
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDensity(Landroid/content/Context;)F

    move-result p0

    mul-float p1, p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public static forceResetScreenSize(Z)V
    .locals 3

    .line 193
    sget v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    .line 194
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 195
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getScreenWidth(Landroid/content/Context;Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-eqz p0, :cond_1

    .line 197
    :cond_0
    invoke-static {v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec(Z)I

    .line 198
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v2}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDensity(Landroid/content/Context;Z)F

    .line 199
    sget-object p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->cacheMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 200
    invoke-static {}, Lcom/taobao/android/dinamicx/widget/DXTextViewWidgetNode;->clearStaticField()V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getDefaultHeightSpec()I
    .locals 1

    .line 185
    sget v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DEFAULT_HEIGHT_SPEC:I

    return v0
.end method

.method public static getDefaultWidthSpec()I
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-static {v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDefaultWidthSpec(Z)I

    move-result v0

    return v0
.end method

.method static getDefaultWidthSpec(Z)I
    .locals 1

    .line 173
    sget v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DEFAULT_WIDTH_SPEC:I

    if-eqz v0, :cond_0

    if-eqz p0, :cond_1

    .line 174
    :cond_0
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 177
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    const/high16 v0, 0x40000000    # 2.0f

    .line 176
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DEFAULT_WIDTH_SPEC:I

    .line 181
    :cond_1
    sget p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DEFAULT_WIDTH_SPEC:I

    return p0
.end method

.method public static getDensity(Landroid/content/Context;)F
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getDensity(Landroid/content/Context;Z)F

    move-result p0

    return p0
.end method

.method static getDensity(Landroid/content/Context;Z)F
    .locals 2

    .line 103
    sget v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DENSITY:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    if-eqz p1, :cond_1

    .line 104
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    .line 105
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DENSITY:F

    .line 108
    :cond_1
    sget p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->DENSITY:F

    return p0
.end method

.method public static getPx(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 5

    const-string v0, "ap"

    const-string v1, "np"

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "DinamicX"

    if-eqz v2, :cond_1

    .line 52
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "size\u5c5e\u6027\u4e3a\u7a7a\u5b57\u7b26\u4e32"

    .line 53
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/taobao/android/dinamicx/log/DXLog;->d(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_0
    return p2

    .line 58
    :cond_1
    sget-object v2, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->cacheMap:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    sget-object p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->cacheMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 63
    :cond_2
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    if-eqz v2, :cond_3

    .line 64
    :try_start_1
    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->dip2px(Landroid/content/Context;F)I

    move-result p0

    goto :goto_0

    .line 66
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->ap2px(Landroid/content/Context;F)I

    move-result p0

    goto :goto_0

    .line 70
    :cond_4
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 71
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->ap2px(Landroid/content/Context;F)I

    move-result p0

    :goto_0
    move p2, p0

    .line 73
    sget-object p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->cacheMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    nop

    .line 75
    invoke-static {}, Lcom/taobao/android/dinamicx/DinamicXEngine;->isDebug()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x2

    .line 76
    new-array p0, p0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, p0, v0

    const/4 p1, 0x1

    const-string/jumbo v0, "\u5199\u6cd5\u9519\u8bef\uff0c\u89e3\u6790\u51fa\u9519"

    aput-object v0, p0, p1

    invoke-static {v3, p0}, Lcom/taobao/android/dinamicx/log/DXLog;->w(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_5
    :goto_1
    return p2
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 120
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 125
    :cond_1
    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    return p0
.end method

.method public static getScreenWidth(Landroid/content/Context;)I
    .locals 1

    const/4 v0, 0x0

    .line 112
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getScreenWidth(Landroid/content/Context;Z)I

    move-result p0

    return p0
.end method

.method static getScreenWidth(Landroid/content/Context;Z)I
    .locals 4

    .line 134
    sget v0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    if-ltz v0, :cond_0

    if-eqz p1, :cond_8

    :cond_0
    const/4 p1, 0x0

    if-eqz p0, :cond_9

    .line 135
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 138
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    if-nez p0, :cond_2

    return p1

    .line 143
    :cond_2
    sget-boolean p1, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->hasSetGlobalOrientation:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    sget p1, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->globalOrientation:I

    const/4 v3, 0x3

    if-ne p1, v3, :cond_3

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    .line 154
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    goto :goto_1

    :cond_4
    if-ne p1, v1, :cond_8

    .line 156
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    goto :goto_1

    :cond_5
    :goto_0
    if-eqz v0, :cond_6

    .line 144
    iget p1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v2, :cond_6

    .line 146
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    .line 147
    iget p1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v1, :cond_7

    .line 149
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    goto :goto_1

    .line 151
    :cond_7
    iget p1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget p0, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    sput p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    .line 160
    :cond_8
    :goto_1
    sget p0, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->WIDTH_SCREEN:I

    return p0

    :cond_9
    :goto_2
    return p1
.end method

.method public static px2ap(Landroid/content/Context;F)I
    .locals 1

    const v0, 0x43bb8000    # 375.0f

    mul-float p1, p1, v0

    .line 95
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/utils/DXScreenTool;->getScreenWidth(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
