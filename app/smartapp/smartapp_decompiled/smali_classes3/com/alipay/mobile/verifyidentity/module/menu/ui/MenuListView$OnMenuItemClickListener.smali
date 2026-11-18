.class Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;
.super Ljava/lang/Object;
.source "MenuListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnMenuItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)V
    .locals 1

    .line 113
    iput-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/alipay/android/hackbyte/ClassVerifier;

    invoke-virtual {p1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "hackbyte "

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$1;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;-><init>(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 117
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object p1

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    .line 118
    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object p1

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-long p1, p1

    cmp-long p3, p4, p1

    if-gez p3, :cond_3

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-gez p3, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$200(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;

    move-result-object p1

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuData;->menu:Ljava/util/List;

    long-to-int p2, p4

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;

    if-eqz p1, :cond_2

    .line 123
    iget-object p2, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;->token:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a()Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;

    move-result-object p2

    iget-object p3, p0, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView$OnMenuItemClickListener;->this$0:Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;

    invoke-static {p3}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$400(Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;

    move-result-object p3

    iget-object p1, p1, Lcom/alipay/mobile/verifyidentity/module/menu/data/MenuItem;->token:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity;->getMenuClickRpc(Ljava/lang/String;)Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuActivity$MenuClickRpc;

    move-result-object p1

    const-string p3, "MenuClick"

    invoke-virtual {p2, p1, p3}, Lcom/alipay/mobile/verifyidentity/utils/task/AsyncTaskExecutor;->a(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_2
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "the chosen token is empty"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_3
    :goto_1
    invoke-static {}, Lcom/alipay/mobile/verifyidentity/module/menu/ui/MenuListView;->access$300()Ljava/lang/String;

    move-result-object p1

    const-string p2, "mMenuData is not legal onItemClick"

    invoke-static {p1, p2}, Lcom/alipay/mobile/verifyidentity/log/VerifyLogCat;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
