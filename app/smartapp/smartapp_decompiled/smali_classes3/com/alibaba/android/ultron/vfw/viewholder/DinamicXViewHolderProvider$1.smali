.class Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$1;
.super Ljava/lang/Object;
.source "DinamicXViewHolderProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->downgrade2Preset(Lcom/taobao/android/dinamicx/template/download/DXTemplateItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;


# direct methods
.method constructor <init>(Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider$1;->this$0:Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;

    invoke-static {v0}, Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;->access$000(Lcom/alibaba/android/ultron/vfw/viewholder/DinamicXViewHolderProvider;)Lcom/alibaba/android/ultron/vfw/core/ViewEngine;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/alibaba/android/ultron/vfw/core/ViewEngine;->rebuild(I)V

    return-void
.end method
