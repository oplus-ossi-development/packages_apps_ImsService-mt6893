.class Lcom/mediatek/wfo/impl/WifiPdnHandler$3;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "WifiPdnHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/wfo/impl/WifiPdnHandler;->setupCallbacksForWifiStatus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;


# direct methods
.method constructor <init>(Lcom/mediatek/wfo/impl/WifiPdnHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/wfo/impl/WifiPdnHandler;

    .line 1684
    iput-object p1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1690
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmConnectivityManager(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1692
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1693
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Empty network capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1694
    return-void

    .line 1697
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onAvailable"

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$mignoreVpnCallback(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1698
    return-void

    .line 1701
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x3e8

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 1702
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1715
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$misPrimaryWifi(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1716
    return-void

    .line 1719
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "WIFI onAvailable."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1721
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1723
    invoke-virtual {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v2

    .line 1721
    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1725
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1727
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fputmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V

    .line 1728
    return-void

    .line 1703
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "Without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1704
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1705
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "TRANSPORT_WIFI lost."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1706
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    sget-object v2, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1708
    invoke-virtual {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v2

    .line 1706
    invoke-virtual {v1, v5, v2, v4, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1710
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1712
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 7
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "networkCapabilities"    # Landroid/net/NetworkCapabilities;

    .line 1772
    if-nez p2, :cond_0

    .line 1773
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "NetworkCallback.onCapabilitiesChanged, Capabilities=null"

    invoke-virtual {v0, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1774
    return-void

    .line 1777
    :cond_0
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v1, "onCapabilitiesChanged"

    invoke-static {v0, p2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$mignoreVpnCallback(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1778
    return-void

    .line 1781
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_6

    const/16 v2, 0x10

    .line 1782
    invoke-virtual {p2, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 1786
    :cond_2
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$misPrimaryWifi(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1787
    return-void

    .line 1790
    :cond_3
    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getSignalStrength()I

    move-result v1

    .line 1791
    .local v1, "rssi":I
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback.onCapabilitiesChanged, rssi == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1793
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1794
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v3, 0x3e8

    sget-object v4, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1796
    invoke-virtual {v4}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1794
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1798
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v3, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1801
    .end local v2    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fputmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V

    .line 1803
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmLastRssi(Lcom/mediatek/wfo/impl/WifiPdnHandler;)I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 1804
    return-void

    .line 1806
    :cond_5
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fputmLastRssi(Lcom/mediatek/wfo/impl/WifiPdnHandler;I)V

    .line 1807
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fputmRssiChange(Lcom/mediatek/wfo/impl/WifiPdnHandler;Z)V

    .line 1808
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendEmptyMessage(I)Z

    .line 1809
    return-void

    .line 1783
    .end local v1    # "rssi":I
    :cond_6
    :goto_0
    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;
    .param p2, "linkProperties"    # Landroid/net/LinkProperties;

    .line 1817
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmConnectivityManager(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1819
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1820
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged Empty network capability:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1821
    return-void

    .line 1824
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLinkPropertiesChanged"

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$mignoreVpnCallback(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1825
    return-void

    .line 1828
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const/16 v1, 0x10

    .line 1829
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1834
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$misPrimaryWifi(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1835
    return-void

    .line 1838
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLinkPropertiesChanged TRANSPORT_WIFI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1840
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmIsWifiConnected(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1842
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e8

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DEFAULT_NETWORK_VALIDATED_CONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1844
    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1842
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1846
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1849
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, p1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fputmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V

    .line 1850
    return-void

    .line 1830
    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLinkPropertiesChanged Without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1831
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 6
    .param p1, "network"    # Landroid/net/Network;

    .line 1735
    iget-object v0, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v0}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmConnectivityManager(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    .line 1737
    .local v0, "nc":Landroid/net/NetworkCapabilities;
    if-nez v0, :cond_0

    .line 1738
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1739
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnLost with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mNetwork: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fgetmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;)Landroid/net/Network;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1740
    return-void

    .line 1743
    :cond_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "onLost"

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$mignoreVpnCallback(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1744
    return-void

    .line 1747
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0x10

    .line 1748
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 1753
    :cond_2
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v1, v0, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$misPrimaryWifi(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/NetworkCapabilities;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1754
    return-void

    .line 1758
    :cond_3
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "WIFI onLost."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1760
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const/16 v2, 0x3e8

    sget-object v3, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->DISCONNECTED:Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;

    .line 1762
    invoke-virtual {v3}, Lcom/mediatek/wfo/impl/WifiPdnHandler$WifiConnState;->ordinal()I

    move-result v3

    const/4 v4, 0x0

    .line 1760
    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1764
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-virtual {v2, v1}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1766
    iget-object v2, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    invoke-static {v2, v5}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->-$$Nest$fputmNetwork(Lcom/mediatek/wfo/impl/WifiPdnHandler;Landroid/net/Network;)V

    .line 1767
    return-void

    .line 1749
    .end local v1    # "msg":Landroid/os/Message;
    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/mediatek/wfo/impl/WifiPdnHandler$3;->this$0:Lcom/mediatek/wfo/impl/WifiPdnHandler;

    const-string v2, "OnLost without TRANSPORT_WIFI."

    invoke-virtual {v1, v2}, Lcom/mediatek/wfo/impl/WifiPdnHandler;->log(Ljava/lang/String;)V

    .line 1750
    return-void
.end method
