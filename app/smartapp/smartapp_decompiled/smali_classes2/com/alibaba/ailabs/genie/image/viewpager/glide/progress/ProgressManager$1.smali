.class final Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager$1;
.super Ljava/lang/Object;
.source "ProgressManager.java"

# interfaces
.implements Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressResponseBody$InternalProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method


# virtual methods
.method public onProgress(Ljava/lang/String;JJ)V
    .locals 9

    .line 30
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->getProgressListener(Ljava/lang/String;)Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;

    move-result-object v0

    if-eqz v0, :cond_1

    long-to-float v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float v1, v1, v2

    long-to-float v2, p4

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v3, v1

    const/16 v1, 0x64

    if-lt v3, v1, :cond_0

    const/4 v1, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_0
    move-object v1, p1

    move v2, v8

    move-wide v4, p2

    move-wide v6, p4

    .line 34
    invoke-interface/range {v0 .. v7}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/OnProgressListener;->onProgress(Ljava/lang/String;ZIJJ)V

    if-eqz v8, :cond_1

    .line 36
    invoke-static {p1}, Lcom/alibaba/ailabs/genie/image/viewpager/glide/progress/ProgressManager;->removeListener(Ljava/lang/String;)V

    :cond_1
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
