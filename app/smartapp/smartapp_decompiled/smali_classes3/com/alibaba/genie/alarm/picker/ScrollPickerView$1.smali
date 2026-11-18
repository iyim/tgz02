.class Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;
.super Ljava/lang/Object;
.source "ScrollPickerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->initTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;


# direct methods
.method constructor <init>(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$000(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v0

    .line 138
    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$100(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$000(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$102(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;I)I

    .line 140
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$200(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v0

    if-lez v0, :cond_3

    .line 142
    iget-object v0, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$100(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v0

    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v1

    rem-int/2addr v0, v1

    if-nez v0, :cond_1

    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v3

    sub-int/2addr v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->smoothScrollBy(II)V

    goto :goto_0

    .line 148
    :cond_2
    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    invoke-static {v1}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->access$300(Lcom/alibaba/genie/alarm/picker/ScrollPickerView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    .line 149
    iget-object v1, p0, Lcom/alibaba/genie/alarm/picker/ScrollPickerView$1;->this$0:Lcom/alibaba/genie/alarm/picker/ScrollPickerView;

    neg-int v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/alibaba/genie/alarm/picker/ScrollPickerView;->smoothScrollBy(II)V

    :cond_3
    :goto_0
    return-void
.end method
