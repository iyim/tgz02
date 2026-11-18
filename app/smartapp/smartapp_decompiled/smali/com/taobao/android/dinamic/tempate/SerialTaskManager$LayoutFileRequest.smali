.class public final Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;
.super Ljava/lang/Object;
.source "SerialTaskManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/android/dinamic/tempate/SerialTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LayoutFileRequest"
.end annotation


# instance fields
.field public dinamicTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

.field public layoutKey:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 298
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 302
    :cond_1
    check-cast p1, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;

    .line 304
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->layoutKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->layoutKey:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/taobao/android/dinamic/tempate/SerialTaskManager$LayoutFileRequest;->layoutKey:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 313
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
