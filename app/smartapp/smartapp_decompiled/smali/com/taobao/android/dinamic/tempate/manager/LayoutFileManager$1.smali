.class Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;
.super Ljava/lang/Object;
.source "LayoutFileManager.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;->fetchDegradeFile(Lcom/taobao/android/dinamic/tempate/DinamicTemplate;)Lcom/taobao/android/dinamic/tempate/DinamicTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field tempVersion:I

.field final synthetic this$0:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

.field final synthetic val$degradeTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

.field final synthetic val$name:Ljava/lang/String;

.field final synthetic val$realTargetVersion:I


# direct methods
.method constructor <init>(Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;Ljava/lang/String;ILcom/taobao/android/dinamic/tempate/DinamicTemplate;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->this$0:Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager;

    iput-object p2, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->val$name:Ljava/lang/String;

    iput p3, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->val$realTargetVersion:I

    iput-object p4, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->val$degradeTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 100
    iput p1, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->tempVersion:I

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2

    .line 104
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->val$name:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const-string p1, "_"

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    add-int/2addr p1, v1

    .line 111
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 113
    iget p2, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->tempVersion:I

    if-le p1, p2, :cond_1

    iget p2, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->val$realTargetVersion:I

    if-ge p1, p2, :cond_1

    .line 114
    iput p1, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->tempVersion:I

    .line 115
    iget-object p1, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->val$degradeTemplate:Lcom/taobao/android/dinamic/tempate/DinamicTemplate;

    iget p2, p0, Lcom/taobao/android/dinamic/tempate/manager/LayoutFileManager$1;->tempVersion:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/taobao/android/dinamic/tempate/DinamicTemplate;->version:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    :cond_2
    return v0
.end method
