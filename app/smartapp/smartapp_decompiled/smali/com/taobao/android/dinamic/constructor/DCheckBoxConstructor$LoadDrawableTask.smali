.class public Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;
.super Landroid/os/AsyncTask;
.source "DCheckBoxConstructor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoadDrawableTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "[",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private checkBoxRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/support/v7/widget/AppCompatCheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field height:I

.field newCheckedImage:Ljava/lang/String;

.field newDisCheckImage:Ljava/lang/String;

.field newDisUncheckImage:Ljava/lang/String;

.field newUncheckedImage:Ljava/lang/String;

.field width:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/AppCompatCheckBox;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .line 166
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newCheckedImage:Ljava/lang/String;

    .line 150
    iput-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newUncheckedImage:Ljava/lang/String;

    .line 152
    iput-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisCheckImage:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisUncheckImage:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/support/v7/widget/AppCompatCheckBox;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    .line 168
    iput-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newCheckedImage:Ljava/lang/String;

    .line 169
    iput-object p3, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newUncheckedImage:Ljava/lang/String;

    .line 170
    iput-object p4, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisCheckImage:Ljava/lang/String;

    .line 171
    iput-object p5, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisUncheckImage:Ljava/lang/String;

    .line 172
    iput p6, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->width:I

    .line 173
    iput p7, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->height:I

    .line 174
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->checkBoxRef:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private getDefaultDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method private getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 253
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    .line 254
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;
    .locals 0

    .line 267
    invoke-static {p1, p2, p3, p4}, Lcom/taobao/android/dinamic/constructor/DrawableTools;->getCheckBoxSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    return-object p1
.end method

.method private updateDrawableSize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 235
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    .line 236
    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    .line 237
    invoke-static {p1, p3, p4, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p3

    .line 238
    new-instance p4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p4, p2, p3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 239
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result p1

    invoke-virtual {p4, p1}, Landroid/graphics/drawable/BitmapDrawable;->setTargetDensity(I)V

    return-object p4

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateInternalStatus(Landroid/support/v7/widget/AppCompatCheckBox;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 247
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getSelector(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/AppCompatCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 146
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->doInBackground([Ljava/lang/Void;)[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)[Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 180
    iget-object p1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newCheckedImage:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_0

    .line 182
    iget-object p1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    sget v0, Lcom/taobao/android/dinamic/R$drawable;->dinamicx_checked:I

    invoke-direct {p0, p1, v0}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDefaultDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->width:I

    iget v2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->height:I

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->updateDrawableSize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 188
    iget-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newUncheckedImage:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    sget v1, Lcom/taobao/android/dinamic/R$drawable;->dinamicx_uncheck:I

    invoke-direct {p0, v0, v1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDefaultDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 193
    :cond_1
    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget v2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->width:I

    iget v3, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->height:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->updateDrawableSize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 196
    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisCheckImage:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_2

    .line 198
    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    sget v2, Lcom/taobao/android/dinamic/R$drawable;->dinamicx_discheck:I

    invoke-direct {p0, v1, v2}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDefaultDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 201
    :cond_2
    iget-object v2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget v3, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->width:I

    iget v4, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->height:I

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->updateDrawableSize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 204
    iget-object v2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisUncheckImage:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    .line 206
    iget-object v2, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    sget v3, Lcom/taobao/android/dinamic/R$drawable;->dinamicx_disunchk:I

    invoke-direct {p0, v2, v3}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->getDefaultDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 209
    :cond_3
    iget-object v3, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->context:Landroid/content/Context;

    iget v4, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->width:I

    iget v5, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->height:I

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->updateDrawableSize(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x4

    .line 210
    new-array v3, v3, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    aput-object v0, v3, p1

    const/4 p1, 0x2

    aput-object v1, v3, p1

    const/4 p1, 0x3

    aput-object v2, v3, p1

    return-object v3
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 146
    check-cast p1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->onPostExecute([Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onPostExecute([Landroid/graphics/drawable/Drawable;)V
    .locals 11

    .line 215
    iget-object v0, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->checkBoxRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    if-nez v0, :cond_0

    return-void

    .line 220
    :cond_0
    sget v1, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_CHECK_IMG:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 221
    sget v1, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_UNCHECK_IMG:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 222
    sget v1, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_DIS_CHECK_IMG:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/String;

    .line 223
    sget v1, Lcom/taobao/android/dinamic/DinamicTagKey;->NEED_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/AppCompatCheckBox;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    .line 224
    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newCheckedImage:Ljava/lang/String;

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newUncheckedImage:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisCheckImage:Ljava/lang/String;

    .line 225
    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->newDisUncheckImage:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 226
    aget-object v3, p1, v1

    const/4 v1, 0x1

    aget-object v4, p1, v1

    const/4 v1, 0x2

    aget-object v5, p1, v1

    const/4 v1, 0x3

    aget-object v6, p1, v1

    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Lcom/taobao/android/dinamic/constructor/DCheckBoxConstructor$LoadDrawableTask;->updateInternalStatus(Landroid/support/v7/widget/AppCompatCheckBox;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 227
    sget p1, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_CHECK_IMG:I

    invoke-virtual {v0, p1, v7}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 228
    sget p1, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_UNCHECK_IMG:I

    invoke-virtual {v0, p1, v8}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 229
    sget p1, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_DIS_CHECK_IMG:I

    invoke-virtual {v0, p1, v9}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    .line 230
    sget p1, Lcom/taobao/android/dinamic/DinamicTagKey;->ALREADY_INT_DIS_UNCHECK_IMG:I

    invoke-virtual {v0, p1, v10}, Landroid/support/v7/widget/AppCompatCheckBox;->setTag(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
