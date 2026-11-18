.class Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$4;
.super Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;
.source "SharedPreferencesNewImpl.java"


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

    .line 489
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$4;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-direct {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$RunnableEx;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 492
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$4;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    invoke-virtual {p0}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$4;->getArg()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$500(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Z)V

    return-void
.end method
