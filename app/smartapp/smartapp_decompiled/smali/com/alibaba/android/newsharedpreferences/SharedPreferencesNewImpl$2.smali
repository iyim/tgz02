.class Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;


# direct methods
.method constructor <init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 410
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-virtual {v0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->getModifyID()I

    move-result v0

    if-lez v0, :cond_0

    .line 411
    iget-object v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-static {v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$400(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 412
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$2;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$500(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Z)V

    :cond_0
    return-void
.end method
