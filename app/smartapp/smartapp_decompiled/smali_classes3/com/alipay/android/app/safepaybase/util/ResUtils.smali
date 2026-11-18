.class public Lcom/alipay/android/app/safepaybase/util/ResUtils;
.super Ljava/lang/Object;
.source "ResUtils.java"


# static fields
.field private static LOLLIPOP:Z

.field private static mContext:Landroid/content/Context;

.field private static mMspPackageName:Ljava/lang/String;

.field private static mSafepayPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->LOLLIPOP:Z

    const-string v0, "com.alipay.android.app"

    .line 25
    sput-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mMspPackageName:Ljava/lang/String;

    const-string v0, "com.alipay.android.safepaysdk"

    .line 27
    sput-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mSafepayPackageName:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getAnimId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    .line 43
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 47
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .line 35
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDimenId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 51
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 55
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 39
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 59
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 152
    sget-object p0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mMspPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static getPaddingDrawable(IILandroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5

    if-eqz p2, :cond_0

    .line 165
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v0, "window"

    .line 166
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 167
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 169
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/high16 v0, 0x40c00000    # 6.0f

    .line 170
    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float p0, p0, v0

    float-to-int p0, p0

    .line 171
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v1, 0x140

    .line 172
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 173
    invoke-static {p2, p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    add-int/2addr v0, p0

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 174
    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 176
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 177
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, p1, v1, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 179
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1

    .line 162
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid context"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getRawId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "raw"

    .line 79
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 5

    const/4 v0, 0x0

    .line 90
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    invoke-static {p0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".R$styleable"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 90
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 91
    invoke-virtual {p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    .line 94
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 96
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 103
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    :cond_1
    return-object v0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 141
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 143
    invoke-static {p0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 142
    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 145
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->printExceptionStackTrace(Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    return p0
.end method

.method public static getResourceId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, ".R$"

    .line 110
    sget-object v1, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    .line 114
    :try_start_0
    sget-object v2, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mMspPackageName:Ljava/lang/String;

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 116
    invoke-virtual {v2, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lez v2, :cond_0

    return v2

    .line 122
    :cond_0
    invoke-static {v1, p0, p1}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gtz v2, :cond_1

    .line 125
    sget-object v2, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mSafepayPackageName:Ljava/lang/String;

    .line 126
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v2

    .line 132
    :catch_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 134
    invoke-virtual {v1, p0, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 63
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    .line 67
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "styleable"

    .line 71
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleableIds(Ljava/lang/String;)[I
    .locals 1

    .line 83
    sget-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceDeclareStyleableIntArray(Landroid/content/Context;Ljava/lang/String;)[I

    move-result-object p0

    return-object p0
.end method

.method public static getXmlId(Ljava/lang/String;)I
    .locals 1

    const-string v0, "xml"

    .line 75
    invoke-static {p0, v0}, Lcom/alipay/android/app/safepaybase/util/ResUtils;->getResourceId(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 156
    sput-object p0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mMspPackageName:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static setUiContext(Landroid/content/Context;)V
    .locals 1

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/alipay/android/app/safepaybase/util/ResUtils;->mContext:Landroid/content/Context;

    .line 31
    invoke-static {}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->getInstance()Lcom/alipay/android/app/safepaybase/log/LogTracer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/alipay/android/app/safepaybase/log/LogTracer;->initialize(Landroid/content/Context;)V

    return-void
.end method
