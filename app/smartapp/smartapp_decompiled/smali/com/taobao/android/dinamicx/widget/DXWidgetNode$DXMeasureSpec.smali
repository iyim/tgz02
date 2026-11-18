.class public Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;
.super Ljava/lang/Object;
.source "DXWidgetNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamicx/widget/DXWidgetNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DXMeasureSpec"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec$MeasureSpecMode;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field public static final EXACTLY:I = 0x40000000

.field private static final MODE_MASK:I = -0x40000000

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method static adjust(II)I
    .locals 2

    .line 2183
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 2184
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2187
    invoke-static {p0, v1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_0
    add-int/2addr p0, p1

    if-gez p0, :cond_1

    const/4 p0, 0x0

    .line 2195
    :cond_1
    invoke-static {p0, v0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static getMode(I)I
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p0, v0

    return p0
.end method

.method public static getSize(I)I
    .locals 1

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p0, v0

    return p0
.end method

.method public static makeMeasureSpec(II)I
    .locals 1
    .param p0    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x3fffffffL
        .end annotation
    .end param

    const v0, 0x3fffffff    # 1.9999999f

    and-int/2addr p0, v0

    const/high16 v0, -0x40000000    # -2.0f

    and-int/2addr p1, v0

    or-int/2addr p0, p1

    return p0
.end method

.method public static makeSafeMeasureSpec(II)I
    .locals 0

    .line 2166
    invoke-static {p0, p1}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method public static toString(I)Ljava/lang/String;
    .locals 3

    .line 2201
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getMode(I)I

    move-result v0

    .line 2202
    invoke-static {p0}, Lcom/taobao/android/dinamicx/widget/DXWidgetNode$DXMeasureSpec;->getSize(I)I

    move-result p0

    .line 2204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MeasureSpec: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const-string v0, "UNSPECIFIED "

    .line 2207
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    const-string v0, "EXACTLY "

    .line 2209
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_2

    const-string v0, "AT_MOST "

    .line 2211
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2213
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2217
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2218
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
