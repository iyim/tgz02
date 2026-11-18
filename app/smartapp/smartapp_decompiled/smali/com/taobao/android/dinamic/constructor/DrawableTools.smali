.class public Lcom/taobao/android/dinamic/constructor/DrawableTools;
.super Ljava/lang/Object;
.source "DrawableTools.java"


# static fields
.field public static final STATE_CHECKED:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    .line 12
    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/taobao/android/dinamic/constructor/DrawableTools;->STATE_CHECKED:[I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getCheckBoxSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 3

    .line 43
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const/4 v1, 0x2

    .line 44
    new-array v2, v1, [I

    fill-array-data v2, :array_0

    invoke-virtual {v0, v2, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 45
    new-array p2, v1, [I

    fill-array-data p2, :array_1

    invoke-virtual {v0, p2, p3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p2, 0x1

    .line 46
    new-array p3, p2, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, p3, v1

    invoke-virtual {v0, p3, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 47
    new-array p0, p2, [I

    const p2, -0x10100a0

    aput p2, p0, v1

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x10100a0
        -0x101009e
    .end array-data

    :array_1
    .array-data 4
        -0x10100a0
        -0x101009e
    .end array-data
.end method

.method public static getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;[I)Landroid/graphics/drawable/StateListDrawable;
    .locals 1

    .line 62
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 63
    invoke-virtual {v0, p2, p0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x0

    .line 64
    new-array p0, p0, [I

    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method public static getShape(IIIIII)Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 24
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 25
    invoke-virtual {v0, p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    int-to-float p0, p2

    .line 26
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 27
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 28
    invoke-virtual {v0, p4, p5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    return-object v0
.end method
