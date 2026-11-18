.class Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager$1;
.super Ljava/lang/Object;
.source "SoundPoolManager.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 0

    .line 49
    iget-object p1, p0, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager$1;->this$0:Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;->access$002(Lcom/alibaba/ailabs/genie/task/aicare/SoundPoolManager;Z)Z

    return-void
.end method
