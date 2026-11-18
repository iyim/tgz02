.class public Lc/d/a/a/q/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final s:Z


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lc/d/a/a/f0/k;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:Landroid/graphics/PorterDuff$Mode;

.field public j:Landroid/content/res/ColorStateList;

.field public k:Landroid/content/res/ColorStateList;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/graphics/drawable/Drawable;

.field public n:Z

.field public o:Z

.field public p:Z

.field public q:Z

.field public r:Landroid/graphics/drawable/LayerDrawable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x1

    sput-boolean v0, Lc/d/a/a/q/a;->s:Z

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lc/d/a/a/f0/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/d/a/a/q/a;->n:Z

    iput-boolean v0, p0, Lc/d/a/a/q/a;->o:Z

    iput-boolean v0, p0, Lc/d/a/a/q/a;->p:Z

    iput-object p1, p0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    iput-object p2, p0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    return-void
.end method


# virtual methods
.method public final a(Z)Lc/d/a/a/f0/g;
    .locals 2

    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    if-lez v0, :cond_1

    sget-boolean v0, Lc/d/a/a/q/a;->s:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    :goto_0
    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Lc/d/a/a/f0/g;

    return-object p1

    :cond_0
    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Lc/d/a/a/f0/n;
    .locals 3

    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    check-cast v0, Lc/d/a/a/f0/n;

    return-object v0

    :cond_0
    iget-object v0, p0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/content/res/TypedArray;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    sget v2, Lc/d/a/a/k;->MaterialButton_android_insetLeft:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lc/d/a/a/q/a;->c:I

    sget v2, Lc/d/a/a/k;->MaterialButton_android_insetRight:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lc/d/a/a/q/a;->d:I

    sget v2, Lc/d/a/a/k;->MaterialButton_android_insetTop:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lc/d/a/a/q/a;->e:I

    sget v2, Lc/d/a/a/k;->MaterialButton_android_insetBottom:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v0, Lc/d/a/a/q/a;->f:I

    sget v2, Lc/d/a/a/k;->MaterialButton_cornerRadius:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_0

    sget v2, Lc/d/a/a/k;->MaterialButton_cornerRadius:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lc/d/a/a/q/a;->g:I

    iget-object v2, v0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    iget v6, v0, Lc/d/a/a/q/a;->g:I

    int-to-float v6, v6

    invoke-virtual {v2, v6}, Lc/d/a/a/f0/k;->a(F)Lc/d/a/a/f0/k;

    move-result-object v2

    invoke-virtual {v0, v2}, Lc/d/a/a/q/a;->a(Lc/d/a/a/f0/k;)V

    iput-boolean v4, v0, Lc/d/a/a/q/a;->p:Z

    :cond_0
    sget v2, Lc/d/a/a/k;->MaterialButton_strokeWidth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v0, Lc/d/a/a/q/a;->h:I

    sget v2, Lc/d/a/a/k;->MaterialButton_backgroundTintMode:I

    invoke-virtual {v1, v2, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v2, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    iput-object v2, v0, Lc/d/a/a/q/a;->i:Landroid/graphics/PorterDuff$Mode;

    iget-object v2, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lc/d/a/a/k;->MaterialButton_backgroundTint:I

    invoke-static {v2, v1, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lc/d/a/a/q/a;->j:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lc/d/a/a/k;->MaterialButton_strokeColor:I

    invoke-static {v2, v1, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lc/d/a/a/q/a;->k:Landroid/content/res/ColorStateList;

    iget-object v2, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v2}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v6, Lc/d/a/a/k;->MaterialButton_rippleColor:I

    invoke-static {v2, v1, v6}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, v0, Lc/d/a/a/q/a;->l:Landroid/content/res/ColorStateList;

    sget v2, Lc/d/a/a/k;->MaterialButton_android_checkable:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lc/d/a/a/q/a;->q:Z

    sget v2, Lc/d/a/a/k;->MaterialButton_elevation:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iget-object v6, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v6}, Lb/h/k/q;->r(Landroid/view/View;)I

    move-result v6

    iget-object v7, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v7}, Landroid/widget/Button;->getPaddingTop()I

    move-result v7

    iget-object v8, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-static {v8}, Lb/h/k/q;->q(Landroid/view/View;)I

    move-result v8

    iget-object v9, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v9}, Landroid/widget/Button;->getPaddingBottom()I

    move-result v9

    sget v10, Lc/d/a/a/k;->MaterialButton_android_background:I

    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1
    iput-boolean v4, v0, Lc/d/a/a/q/a;->o:Z

    iget-object v1, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v0, Lc/d/a/a/q/a;->j:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v1, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    iget-object v2, v0, Lc/d/a/a/q/a;->i:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/16 :goto_2

    .line 2
    :cond_1
    iget-object v1, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    .line 3
    new-instance v10, Lc/d/a/a/f0/g;

    iget-object v11, v0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    invoke-direct {v10, v11}, Lc/d/a/a/f0/g;-><init>(Lc/d/a/a/f0/k;)V

    iget-object v11, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    invoke-virtual {v11}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v10, v11}, Lc/d/a/a/f0/g;->a(Landroid/content/Context;)V

    iget-object v11, v0, Lc/d/a/a/q/a;->j:Landroid/content/res/ColorStateList;

    .line 4
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    iget-object v11, v0, Lc/d/a/a/q/a;->i:Landroid/graphics/PorterDuff$Mode;

    if-eqz v11, :cond_2

    .line 6
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v10, v11}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 7
    :cond_2
    iget v11, v0, Lc/d/a/a/q/a;->h:I

    int-to-float v11, v11

    iget-object v12, v0, Lc/d/a/a/q/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v10, v11, v12}, Lc/d/a/a/f0/g;->a(FLandroid/content/res/ColorStateList;)V

    new-instance v11, Lc/d/a/a/f0/g;

    iget-object v12, v0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    invoke-direct {v11, v12}, Lc/d/a/a/f0/g;-><init>(Lc/d/a/a/f0/k;)V

    invoke-virtual {v11, v3}, Lc/d/a/a/f0/g;->setTint(I)V

    iget v12, v0, Lc/d/a/a/q/a;->h:I

    int-to-float v12, v12

    iget-boolean v13, v0, Lc/d/a/a/q/a;->n:Z

    if-eqz v13, :cond_3

    iget-object v13, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget v14, Lc/d/a/a/b;->colorSurface:I

    invoke-static {v13, v14}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;I)I

    move-result v13

    goto :goto_0

    :cond_3
    move v13, v3

    :goto_0
    invoke-virtual {v11, v12, v13}, Lc/d/a/a/f0/g;->a(FI)V

    sget-boolean v12, Lc/d/a/a/q/a;->s:Z

    const/4 v13, 0x2

    if-eqz v12, :cond_4

    new-instance v12, Lc/d/a/a/f0/g;

    iget-object v14, v0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    invoke-direct {v12, v14}, Lc/d/a/a/f0/g;-><init>(Lc/d/a/a/f0/k;)V

    iput-object v12, v0, Lc/d/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lc/d/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    .line 8
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v12, v5}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 9
    new-instance v5, Landroid/graphics/drawable/RippleDrawable;

    iget-object v12, v0, Lc/d/a/a/q/a;->l:Landroid/content/res/ColorStateList;

    invoke-static {v12}, Lc/d/a/a/d0/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v12

    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    new-array v13, v13, [Landroid/graphics/drawable/Drawable;

    aput-object v11, v13, v3

    aput-object v10, v13, v4

    invoke-direct {v15, v13}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 10
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget v4, v0, Lc/d/a/a/q/a;->c:I

    iget v10, v0, Lc/d/a/a/q/a;->e:I

    iget v11, v0, Lc/d/a/a/q/a;->d:I

    iget v13, v0, Lc/d/a/a/q/a;->f:I

    move-object v14, v3

    move/from16 v16, v4

    move/from16 v17, v10

    move/from16 v18, v11

    move/from16 v19, v13

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 11
    iget-object v4, v0, Lc/d/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {v5, v12, v3, v4}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    iget-object v3, v0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    goto :goto_1

    :cond_4
    new-instance v5, Lc/d/a/a/d0/a;

    iget-object v12, v0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    invoke-direct {v5, v12}, Lc/d/a/a/d0/a;-><init>(Lc/d/a/a/f0/k;)V

    iput-object v5, v0, Lc/d/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    iget-object v5, v0, Lc/d/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lc/d/a/a/q/a;->l:Landroid/content/res/ColorStateList;

    invoke-static {v12}, Lc/d/a/a/d0/b;->a(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v12

    .line 12
    sget v14, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v5, v12}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 13
    new-instance v5, Landroid/graphics/drawable/LayerDrawable;

    const/4 v12, 0x3

    new-array v12, v12, [Landroid/graphics/drawable/Drawable;

    aput-object v11, v12, v3

    aput-object v10, v12, v4

    iget-object v3, v0, Lc/d/a/a/q/a;->m:Landroid/graphics/drawable/Drawable;

    aput-object v3, v12, v13

    invoke-direct {v5, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v5, v0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    iget-object v15, v0, Lc/d/a/a/q/a;->r:Landroid/graphics/drawable/LayerDrawable;

    .line 14
    new-instance v3, Landroid/graphics/drawable/InsetDrawable;

    iget v4, v0, Lc/d/a/a/q/a;->c:I

    iget v5, v0, Lc/d/a/a/q/a;->e:I

    iget v10, v0, Lc/d/a/a/q/a;->d:I

    iget v11, v0, Lc/d/a/a/q/a;->f:I

    move-object v14, v3

    move/from16 v16, v4

    move/from16 v17, v5

    move/from16 v18, v10

    move/from16 v19, v11

    invoke-direct/range {v14 .. v19}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 15
    :goto_1
    invoke-virtual {v1, v3}, Lcom/google/android/material/button/MaterialButton;->setInternalBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lc/d/a/a/q/a;->b()Lc/d/a/a/f0/g;

    move-result-object v1

    if-eqz v1, :cond_5

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lc/d/a/a/f0/g;->a(F)V

    :cond_5
    :goto_2
    iget-object v1, v0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    iget v2, v0, Lc/d/a/a/q/a;->c:I

    add-int/2addr v6, v2

    iget v2, v0, Lc/d/a/a/q/a;->e:I

    add-int/2addr v7, v2

    iget v2, v0, Lc/d/a/a/q/a;->d:I

    add-int/2addr v8, v2

    iget v2, v0, Lc/d/a/a/q/a;->f:I

    add-int/2addr v9, v2

    .line 16
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public a(Lc/d/a/a/f0/k;)V
    .locals 2

    iput-object p1, p0, Lc/d/a/a/q/a;->b:Lc/d/a/a/f0/k;

    .line 17
    invoke-virtual {p0}, Lc/d/a/a/q/a;->b()Lc/d/a/a/f0/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lc/d/a/a/q/a;->b()Lc/d/a/a/f0/g;

    move-result-object v0

    .line 18
    iget-object v1, v0, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iput-object p1, v1, Lc/d/a/a/f0/g$b;->a:Lc/d/a/a/f0/k;

    invoke-virtual {v0}, Lc/d/a/a/f0/g;->invalidateSelf()V

    .line 19
    :cond_0
    invoke-virtual {p0}, Lc/d/a/a/q/a;->c()Lc/d/a/a/f0/g;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lc/d/a/a/q/a;->c()Lc/d/a/a/f0/g;

    move-result-object v0

    .line 20
    iget-object v1, v0, Lc/d/a/a/f0/g;->b:Lc/d/a/a/f0/g$b;

    iput-object p1, v1, Lc/d/a/a/f0/g$b;->a:Lc/d/a/a/f0/k;

    invoke-virtual {v0}, Lc/d/a/a/f0/g;->invalidateSelf()V

    .line 21
    :cond_1
    invoke-virtual {p0}, Lc/d/a/a/q/a;->a()Lc/d/a/a/f0/n;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lc/d/a/a/q/a;->a()Lc/d/a/a/f0/n;

    move-result-object v0

    invoke-interface {v0, p1}, Lc/d/a/a/f0/n;->setShapeAppearanceModel(Lc/d/a/a/f0/k;)V

    :cond_2
    return-void
.end method

.method public b()Lc/d/a/a/f0/g;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lc/d/a/a/q/a;->a(Z)Lc/d/a/a/f0/g;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lc/d/a/a/f0/g;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lc/d/a/a/q/a;->a(Z)Lc/d/a/a/f0/g;

    move-result-object v0

    return-object v0
.end method

.method public final d()V
    .locals 4

    invoke-virtual {p0}, Lc/d/a/a/q/a;->b()Lc/d/a/a/f0/g;

    move-result-object v0

    invoke-virtual {p0}, Lc/d/a/a/q/a;->c()Lc/d/a/a/f0/g;

    move-result-object v1

    if-eqz v0, :cond_1

    iget v2, p0, Lc/d/a/a/q/a;->h:I

    int-to-float v2, v2

    iget-object v3, p0, Lc/d/a/a/q/a;->k:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v2, v3}, Lc/d/a/a/f0/g;->a(FLandroid/content/res/ColorStateList;)V

    if-eqz v1, :cond_1

    iget v0, p0, Lc/d/a/a/q/a;->h:I

    int-to-float v0, v0

    iget-boolean v2, p0, Lc/d/a/a/q/a;->n:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lc/d/a/a/q/a;->a:Lcom/google/android/material/button/MaterialButton;

    sget v3, Lc/d/a/a/b;->colorSurface:I

    invoke-static {v2, v3}, Landroidx/appcompat/app/AppCompatDelegateImpl$i;->a(Landroid/view/View;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v0, v2}, Lc/d/a/a/f0/g;->a(FI)V

    :cond_1
    return-void
.end method
