.class Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$4;
.super Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;
.source "SharedPreferencesNewImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;)V
    .locals 0

    .line 520
    iput-object p1, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$4;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-direct {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$RunnableEx;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 523
    iget-object v0, p0, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$4;->this$0:Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;

    invoke-virtual {p0}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl$4;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;->access$300(Lcom/alibaba/ailabs/genie/second/sharedpreference/SharedPreferencesNewImpl;Z)V

    return-void
.end method
