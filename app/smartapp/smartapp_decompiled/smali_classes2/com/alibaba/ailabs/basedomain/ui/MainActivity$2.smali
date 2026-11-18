.class Lcom/alibaba/ailabs/basedomain/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/arch/lifecycle/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/arch/lifecycle/Observer<",
        "Ljava/lang/Class<",
        "+",
        "Landroid/support/v4/app/Fragment;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Ljava/lang/Class;)V
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$2;->this$0:Lcom/alibaba/ailabs/basedomain/ui/MainActivity;

    invoke-static {v0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity;->access$000(Lcom/alibaba/ailabs/basedomain/ui/MainActivity;Ljava/lang/Class;)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p0, p1}, Lcom/alibaba/ailabs/basedomain/ui/MainActivity$2;->onChanged(Ljava/lang/Class;)V

    return-void
.end method
