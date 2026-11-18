.class public Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;
.super Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;
.source "DTextViewConstructor.java"


# static fields
.field public static final DEFAULT_TEXT_COLOR:I = -0x1000000

.field public static final TAG:Ljava/lang/String; = "DTextViewConstructor"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public applyDefaultProperty(Landroid/view/View;Ljava/util/Map;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/taobao/android/dinamic/model/DinamicParams;",
            ")V"
        }
    .end annotation

    .line 114
    invoke-super {p0, p1, p2, p3}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->applyDefaultProperty(Landroid/view/View;Ljava/util/Map;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 116
    move-object p3, p1

    check-cast p3, Landroid/widget/TextView;

    const-string v0, "dTextSize"

    .line 117
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/high16 v0, 0x41400000    # 12.0f

    .line 118
    invoke-virtual {p3, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const-string v0, "dTextColor"

    .line 121
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x1000000

    .line 122
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    const-string v0, "dMaxLines"

    .line 125
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_2
    const-string v0, "dLineBreakMode"

    .line 129
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :cond_3
    const-string v0, "dTextGravity"

    .line 133
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "dTextAlignment"

    .line 134
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x10

    .line 135
    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setGravity(I)V

    :cond_4
    const-string p3, "dAccessibilityTextHidden"

    .line 138
    invoke-interface {p2, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 139
    invoke-virtual {p0, p1, v1}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setAccessibilityHidden(Landroid/view/View;Z)V

    :cond_5
    return-void
.end method

.method public initializeView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 60
    new-instance p1, Landroid/widget/TextView;

    invoke-direct {p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object p1
.end method

.method public setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V
    .locals 2
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

    .line 65
    invoke-super {p0, p1, p2, p3, p4}, Lcom/taobao/android/dinamic/dinamic/DinamicViewAdvancedConstructor;->setAttributes(Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;Lcom/taobao/android/dinamic/model/DinamicParams;)V

    .line 67
    check-cast p1, Landroid/widget/TextView;

    const-string p4, "dText"

    .line 68
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_0
    const-string p4, "dTextSize"

    .line 72
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_1
    const-string p4, "dTextTheme"

    .line 76
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "dTextStyle"

    if-nez v0, :cond_2

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_2
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    .line 78
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    nop

    nop

    .line 77
    invoke-virtual {p0, p1, p4, v0}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextTheme(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string p4, "dTextColor"

    .line 81
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 82
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_4
    const-string p4, "dMaxLines"

    .line 85
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 86
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setMaxLines(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_5
    const-string p4, "dMaxWidth"

    .line 89
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setMaxWidth(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_6
    const-string p4, "dLineBreakMode"

    .line 93
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 94
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextLineBreakMode(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_7
    const-string p4, "dStrikeThroughStyle"

    .line 97
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 98
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    nop

    nop

    invoke-virtual {p0, p1, p4}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setDeleteLine(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_8
    const-string p4, "dTextGravity"

    .line 101
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "dTextAlignment"

    if-nez v0, :cond_9

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_a

    .line 102
    :cond_9
    invoke-interface {p2, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    nop

    nop

    .line 103
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    nop

    nop

    .line 102
    invoke-virtual {p0, p1, p3, p2}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextGravity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return-void
.end method

.method public setDeleteLine(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "single"

    .line 281
    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 282
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p1

    const/16 p2, 0x10

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setFlags(I)V

    :cond_0
    return-void
.end method

.method public setMaxLines(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 264
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_0

    const p2, 0x7fffffff

    .line 265
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 266
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 267
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_0

    .line 269
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_0
    return-void
.end method

.method public setMaxWidth(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 274
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p2, v1}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p2

    if-eq p2, v1, :cond_0

    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_0
    return-void
.end method

.method public setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAlignment(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 248
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 249
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, 0x15

    .line 257
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    const/16 p2, 0x11

    .line 254
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x13

    .line 251
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    :goto_0
    return-void
.end method

.method public setTextColor(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    const/high16 v0, -0x1000000

    .line 202
    invoke-static {p2, v0}, Lcom/taobao/android/dinamic/property/DAttrUtils;->parseColor(Ljava/lang/String;I)I

    move-result p2

    .line 203
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextGravity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_3

    const-string p3, "left"

    .line 233
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p2, 0x13

    .line 234
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_0
    const-string p3, "center"

    .line 235
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/16 p2, 0x11

    .line 236
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo p3, "right"

    .line 237
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/16 p2, 0x15

    .line 238
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    :cond_2
    const/16 p2, 0x10

    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextAlignment(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setTextLineBreakMode(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 207
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 208
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 219
    :cond_0
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 216
    :cond_1
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    .line 213
    :cond_2
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    .line 210
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    return-void
.end method

.method public setTextSize(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 144
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, p2, v1}, Lcom/taobao/android/dinamic/property/ScreenTool;->getPx(Landroid/content/Context;Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v1, :cond_0

    const/4 p2, 0x1

    const/high16 v0, 0x41400000    # 12.0f

    .line 147
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    int-to-float p2, p2

    .line 149
    invoke-virtual {p1, v0, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    :goto_0
    return-void
.end method

.method public setTextStyle(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 159
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 161
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    .line 162
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 170
    :cond_2
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 167
    :cond_3
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 164
    :cond_4
    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :goto_0
    return-void
.end method

.method public setTextTheme(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_3

    const-string p3, "normal"

    .line 187
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 188
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_0
    const-string p3, "bold"

    .line 189
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    .line 190
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    :cond_1
    const-string p3, "italic"

    .line 191
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    .line 192
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 194
    :cond_2
    invoke-static {v0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 197
    :cond_3
    invoke-virtual {p0, p1, p3}, Lcom/taobao/android/dinamic/constructor/DTextViewConstructor;->setTextStyle(Landroid/widget/TextView;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
