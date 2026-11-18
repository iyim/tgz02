.class Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;
.super Ljava/lang/Object;
.source "SharedPreferencesNewImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->saveInner(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

.field final synthetic val$force:Z


# direct methods
.method constructor <init>(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Z)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    iput-boolean p2, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;->val$force:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;->this$0:Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;

    iget-boolean v1, p0, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl$3;->val$force:Z

    invoke-static {v0, v1}, Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;->access$500(Lcom/alibaba/android/newsharedpreferences/SharedPreferencesNewImpl;Z)V

    return-void
.end method
