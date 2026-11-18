.class public Lcom/taobao/statistic/TBS$EasyTrace;
.super Ljava/lang/Object;
.source "TBS.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/statistic/TBS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EasyTrace"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs easyTraceCtrlClickManual(Landroid/view/View;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static varargs easyTraceCtrlClickManual(Landroid/view/View;[Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static easyTraceEnterManual(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 855
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;)V

    .line 856
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 857
    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static easyTraceFragmentEnterManual(Landroid/app/Fragment;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 889
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public static easyTraceFragmentLeaveManual(Landroid/app/Fragment;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 898
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 899
    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public static easyTraceFragmentV4EnterManual(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 908
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->pageAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public static easyTraceFragmentV4LeaveManual(Landroid/support/v4/app/Fragment;)V
    .locals 1

    .line 917
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 918
    invoke-virtual {v0, p0}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public static easyTraceLeaveManual(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 866
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 867
    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    .line 868
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p1

    .line 869
    invoke-virtual {p1, p0}, Lcom/ut/mini/UTTracker;->pageDisAppear(Ljava/lang/Object;)V

    return-void
.end method

.method public static easyTraceUpdatePageNameManual(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 1

    .line 879
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 880
    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static easyTraceUpdatePageNameManual(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public static getUserTrackRuntime()Ljava/lang/Runtime;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static updateEasyTraceActivityProperties(Landroid/app/Activity;Ljava/util/Properties;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 929
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    .line 930
    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 932
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    .line 933
    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 934
    invoke-static {p1}, Lcom/alibaba/analytics/utils/MapUtils;->convertPropertiesToMap(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object p1

    .line 933
    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public static updateEasyTraceActivityPropertiesManual(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Properties;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    .line 950
    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 952
    invoke-static {p2}, Lcom/alibaba/analytics/utils/MapUtils;->convertPropertiesToMap(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object p2

    .line 951
    invoke-virtual {v0, p0, p2}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    .line 954
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object p2

    .line 955
    invoke-virtual {p2}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object p2

    .line 956
    invoke-virtual {p2, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageName(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static updateEasyTraceFragmentProperties(Landroid/app/Fragment;Ljava/util/Properties;)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 967
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    .line 968
    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 970
    invoke-static {p1}, Lcom/alibaba/analytics/utils/MapUtils;->convertPropertiesToMap(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object p1

    .line 969
    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method

.method public static updateEasyTraceFragmentV4Properties(Landroid/support/v4/app/Fragment;Ljava/util/Properties;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 981
    invoke-static {}, Lcom/ut/mini/UTAnalytics;->getInstance()Lcom/ut/mini/UTAnalytics;

    move-result-object v0

    .line 982
    invoke-virtual {v0}, Lcom/ut/mini/UTAnalytics;->getDefaultTracker()Lcom/ut/mini/UTTracker;

    move-result-object v0

    .line 984
    invoke-static {p1}, Lcom/alibaba/analytics/utils/MapUtils;->convertPropertiesToMap(Ljava/util/Properties;)Ljava/util/Map;

    move-result-object p1

    .line 983
    invoke-virtual {v0, p0, p1}, Lcom/ut/mini/UTTracker;->updatePageProperties(Ljava/lang/Object;Ljava/util/Map;)V

    return-void
.end method
