.class Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;
.super Ljava/lang/Object;
.source "CleanerMainAdapter.java"

# interfaces
.implements Lcom/alibaba/ailabs/cleaner/adapter/vh/CleanerMainItemViewHolder$OnUinstallCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

.field final synthetic val$dataPos:I

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;II)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->this$0:Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter;

    iput p2, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->val$dataPos:I

    iput p3, p0, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUninstallFailed(Ljava/lang/String;I)V
    .locals 0

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public onUninstallSuccess(Ljava/lang/String;I)V
    .locals 0

    .line 79
    new-instance p1, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;

    invoke-direct {p1, p0}, Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1$1;-><init>(Lcom/alibaba/ailabs/cleaner/adapter/CleanerMainAdapter$1;)V

    invoke-static {p1}, Lcom/alibaba/ailabs/genie/utils/handle/HandleUtil;->postOnUiThread(Ljava/lang/Runnable;)V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method
